%nproc=4
%mem=5760MB
%chk=gaussian_18_water_hf_pdz.chk
#P HF/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.844235676202133     -0.219457540020589      0.000000000000000


