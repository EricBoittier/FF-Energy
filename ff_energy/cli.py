import sys

sys.path.append("/home/boittier/Documents/phd/ff_energy")

from ff_energy.structure import Structure
from ff_energy.job import Job
from ff_energy.jobmaker import get_structures_pdbs, JobMaker
from ff_energy.plot import plot_energy_MSE
from ff_energy.configmaker import ConfigMaker, system_names, THEORY
from ff_energy.config import Config
from pathlib import Path
import pandas as pd
import pickle
from ff_energy.slurm import SlurmJobHandler

clusterBACH = ('ssh', 'boittier@pc-bach')
clusterBEETHOVEN = ('ssh', 'boittier@beethoven')

CLUSTER_DRIVE = {"boittier@pc-bach": "/home/boittier/pcbach",
                 "boittier@beethoven": "/home/boittier/homeb", }

CONFIG_PATH = "/home/boittier/Documents/phd/ff_energy/configs/"
atom_types = {
    ("TIP3", "OH2"): "OT",
    ("TIP3", "H1"): "HT",
    ("TIP3", "H2"): "HT",
}


def pickle_output(output, name="dists"):
    pickle_path = Path(f'pickles/{name}.pkl')
    pickle_path.parents[0].mkdir(parents=True, exist_ok=True)
    with open(pickle_path, 'wb') as handle:
        pickle.dump(output, handle,
                    protocol=pickle.HIGHEST_PROTOCOL)


def read_from_pickle(path):
    with open(path, 'rb') as file:
        try:
            while True:
                yield pickle.load(file)
        except EOFError:
            pass


def MakeJob(name, ConfigMaker, atom_types=atom_types, system_name=None):
    pickle_exists = Path(f"pickles/{system_name}.pkl").exists()
    if pickle_exists:
        print("Strcuture,PDB already already exists, loading structure from pickle")
        structures, pdbs = next(read_from_pickle(f"pickles/{system_name}.pkl"))
    else:
        print("pickle does not exist")
        structures, pdbs = get_structures_pdbs(
            Path(ConfigMaker.pdbs),
            atom_types=atom_types,
            system_name=system_name
        )
        pickle_output((structures, pdbs), name=system_name)

    return JobMaker(name, pdbs, structures, ConfigMaker.make().__dict__)


def load_config_maker(theory, system, elec):
    cm = ConfigMaker(theory, system, elec)
    return [cm]


def load_config_from_input(filenames) -> []:
    CMS = []
    filenames = filenames.split()
    for filename in filenames:
        c = Config()
        c.read_config(CONFIG_PATH + filename)
        CMS.append(c)
    return CMS


def load_all_theory_and_elec():
    CMS = []
    for system in system_names:
        for theory in THEORY.keys():
            for elec in ["pc", "mdcm"]:
                # print(system, theory, elec)
                cm = ConfigMaker(theory, system, elec)
                CMS.append(cm)
    return CMS


def load_all_theory():
    CMS = []
    for system in system_names:
        for theory in THEORY.keys():
            cm = ConfigMaker(theory, system, "pc")
            CMS.append(cm)

    return CMS


def charmm_jobs(CMS):
    jobmakers = []
    for cms in CMS:
        print(cms.elec)
        jm = MakeJob(f"{cms.system_name}/{cms.theory_name}_{cms.elec}", cms,
                     atom_types=cms.atom_types, system_name=cms.system_name)
        HOMEDIR = f"/home/boittier/homeb/"
        PCBACH = f"/home/boittier/pcbach/{cms.system_name}/{cms.theory_name}"
        # jm.gather_data(HOMEDIR, PCBACH, PCBACH)
        jm.make_charmm(HOMEDIR)
        jobmakers.append(jm)
    return jobmakers


def submit_jobs(jobs, max_jobs=120, Check=True, cluster=clusterBACH):
    shj = SlurmJobHandler(max_jobs=max_jobs, cluster=cluster)
    print("Running jobs: ", shj.get_running_jobs())
    for j in jobs:
        shj.add_job(j)

    print("Jobs: ", len(shj.jobs))
    # print(shj.jobs)
    print(len(shj.jobs))
    shj.shuffle_jobs()
    shj.submit_jobs(Check=Check)


def charmm_submit(cluster, jobmakers, max_jobs=120, Check=True):
    jobs = []
    for jm in jobmakers:
        DRIVE = CLUSTER_DRIVE[cluster[1]]
        for js in jm.get_charmm_jobs(DRIVE):
            jobs.append(js)

    submit_jobs(jobs, max_jobs=max_jobs, Check=Check, cluster=cluster)


def cluster_submit(cluster, jobmakers, max_jobs=120, Check=True):
    jobs = []
    for jm in jobmakers:
        DRIVE = CLUSTER_DRIVE[cluster[1]]
        for js in jm.get_monomer_jobs(DRIVE):
            jobs.append(js)
        for js in jm.get_cluster_jobs(DRIVE):
            jobs.append(js)
    submit_jobs(jobs, max_jobs=max_jobs, Check=Check, cluster=cluster)


def molpro_jobs(CMS, DRY):
    jobmakers = []
    for cms in CMS:
        print(cms)
        jm = MakeJob(f"{cms.system_name}/{cms.theory_name}", cms,
                     atom_types=cms.atom_types,
                     system_name=cms.system_name)
        HOMEDIR = f"/home/boittier/homeb/"
        PCBACH = f"/home/boittier/pcbach/"  # {cms.system_name}/{cms.theory_name}"
        if not DRY:
            jm.make_molpro(PCBACH)
        jobmakers.append(jm)
    return jobmakers


def data_jobs(CMS):
    jobmakers = []
    for cms in CMS:
        print(cms)
        jm = MakeJob(f"{cms.system_name}/{cms.theory_name}_{cms.elec}", cms,
                     atom_types=cms.atom_types,
                     system_name=cms.system_name)
        HOMEDIR = f"/home/boittier/homeb/"
        PCBACH = f"/home/boittier/pcbach/{cms.system_name}/{cms.theory_name}"
        COLOUMB = f"/home/boittier/homeb/{cms.system_name}/{cms.theory_name}"
        CHM = f"/home/boittier/homeb/{cms.system_name}/{cms.theory_name}_{cms.elec}"
        jm.gather_data(HOMEDIR,
                       PCBACH,  # cluster
                       PCBACH,  # monomers
                       PCBACH,  # pairs
                       COLOUMB,  # coloumn
                       CHM)  # charmm
        jobmakers.append(jm)
    return jobmakers


def coloumb_jobs(CMS):
    jobmakers = []
    for cms in CMS:
        print(cms)
        jm = MakeJob(f"{cms.system_name}/{cms.theory_name}", cms,
                     atom_types=cms.atom_types,
                     system_name=cms.system_name)
        HOMEDIR = f"/home/boittier/homeb/"
        PCBACH = f"/home/boittier/pcbach/{cms.system_name}/{cms.theory_name}"
        jm.make_coloumb(HOMEDIR,
                        f"/home/boittier/pcbach/{cms.system_name}/{cms.theory_name}/""{}/monomers")
        jobmakers.append(jm)
    return jobmakers


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(
        prog='ProgramName',
        description='What the program does',
        epilog='Text at the bottom of help')
    print("----")

    # parser.add_argument('filename')           # positional argument
    parser.add_argument('-d', '--data', required=False, default=False, action='store_true')  # option that takes a value
    parser.add_argument('-a', '--all', required=False, default=False, action='store_true')
    parser.add_argument('-at', '--all_theory', required=False, default=False, action='store_true')
    parser.add_argument('-c', '--cluster', required=False, default=False, action='store_true')
    parser.add_argument('-x', '--config', required=False, default=False, action='store_true')
    parser.add_argument('-t', '--theory', required=False, default=None)
    parser.add_argument('-m', '--model', required=False, default=None)
    parser.add_argument('-e', '--elec', required=False, default=None)
    parser.add_argument('-s', "--submit", required=False, default=False, action='store_true')
    parser.add_argument('-cj', '--coloumb', required=False, default=False, action='store_true')
    parser.add_argument('-chmj', '--chm', required=False, default=False, action='store_true')
    parser.add_argument('-mj', '--molpro', required=False, default=False, action='store_true')
    parser.add_argument('-dry', '--dry', required=False, default=False, action='store_true')
    parser.add_argument('-v', '--verbose',
                        action='store_true')  # on/off flag

    CMS = None
    args = parser.parse_args()

    if args.all:
        if args.verbose:
            print("Loading all data")
        CMS = load_all_theory_and_elec()
    elif args.all_theory:
        if args.verbose:
            print("Loading all theory")
        CMS = load_all_theory()
    elif args.config:
        if args.verbose:
            print("Making Configs: ", args.config)
        CMS = load_config_from_input(args.config)
    else:
        print(args.theory, args.model, args.elec)
        if args.theory and args.model and args.elec:
            CMS = load_config_maker(args.theory, args.model, args.elec)
        else:
            print("Missing one of args.theory and args.model and args.elec")
            print(parser.print_help())
            sys.exit(1)

    if CMS is not None:
        for c in CMS:
            c.write_config()

        if args.molpro:
            if args.verbose:
                print("Making Molpro Jobs")
            jobmakers = molpro_jobs(CMS, args.dry)
            if args.submit:
                if args.verbose:
                    print("Submitting Molpro Jobs")
                cluster_submit(clusterBACH, jobmakers, max_jobs=120, Check=True)

        if args.chm:
            if args.verbose:
                print("Making CHARMM Jobs")
            jobmakers = charmm_jobs(CMS)
            if args.submit:
                if args.verbose:
                    print("Submitting CHM Jobs")
                charmm_submit(clusterBEETHOVEN, jobmakers, max_jobs=120, Check=False)

        if args.coloumb:
            if args.verbose:
                print("Making Coloumb Jobs")
            jobmakers = coloumb_jobs(CMS)
            if args.submit:
                if args.verbose:
                    print("Submitting Coloumb Jobs")
                cluster_submit(clusterBEETHOVEN, jobmakers, max_jobs=120, Check=True)

        if args.data:
            if args.verbose:
                print("Gathering Data")
            jobmakers = data_jobs(CMS)

    else:
        print("No Jobs Found...")
