%nproc=4
%mem=5760MB
%chk=gaussian_22_water_hf_pdz.chk
#P HF/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.566946100642510     -0.655958240437998      0.000000000000000


