from pathlib import Path
import subprocess
import time

clusters = {
    "nccr": ("ssh", "boittier@pc-nccr-cluster"),
    "bach": ("ssh", "boittier@pc-bach"),
    "beethoven": ("ssh", "boittier@beethoven"),
    "pc-beethoven": ("ssh", "boittier@pc-beethoven"),

}

class SlurmJobHandler:
    def __init__(self,
                 max_jobs=5,
                 username='boittier',
                 cluster=('ssh', 'boittier@pc-bach'),
                 clustername='pc-bach'):

        self.max_jobs = max_jobs
        self.username = username
        self.clustername = clustername
        self.jobs = []
        self.cluster = cluster

    def shuffle_jobs(self):
        import random
        random.shuffle(self.jobs)

    def add_job(self, job_script):
        self.jobs.append(job_script)

    def submit_jobs(self, Check=True):
        for i, job_script in enumerate(self.jobs):
            job_path = Path(job_script)
            
            job_dir = "/".join(job_path.parts[4:-1])
            print(job_dir)
            
            if Check:
                running_jobs = self.get_running_jobs()
                while running_jobs >= self.max_jobs:
                    time.sleep(60)  # wait for 1 minute before checking again
                    running_jobs = self.get_running_jobs()

            # subprocess.run(['sbatch', job_path.name], cwd=job_path.parents[0])
            output = subprocess.check_output([self.cluster[0], self.cluster[1],
                                     f'source .bashrc; cd {job_dir}; sbatch {job_path.name}']).decode(
                    'utf-8').strip()
            # print(output)
            print(f'{i}/{len(self.jobs)} = submitted job {job_script} to Slurm scheduler')

    def get_running_jobs(self):
        output = subprocess.check_output([self.cluster[0], self.cluster[1], 'squeue', '-u', self.username, '-t', 'pending,running']).decode('utf-8')
        return output.count('\n') - 1  # exclude the header line

    def get_job_status(self, job_id):
        output = subprocess.check_output([self.cluster[0], self.cluster[1], 'squeue', '-j', job_id]).decode('utf-8')
        status_lines = output.strip().split('\n')[1:]  # exclude the header line
        print(status_lines)
        if len(status_lines) == 0:
            return 'COMPLETED'
        else:
            return status_lines[0].split()[4]

    def monitor_jobs(self, interval=10):
        running_jobs = []
        for job_script in self.jobs:
            output = subprocess.check_output(['sbatch', '--parsable', job_script]).decode('utf-8').strip()
            job_id = output.split()[-1]
            running_jobs.append((job_script, job_id))
        while len(running_jobs) > 0:
            for job in running_jobs:
                job_script, job_id = job
                job_status = self.get_job_status(job_id)
                if job_status in ('COMPLETED', 'FAILED', 'CANCELLED'):
                    print(f'Job {job_script} (id {job_id}) has finished with status {job_status}')
                    running_jobs.remove(job)
            time.sleep(interval)


