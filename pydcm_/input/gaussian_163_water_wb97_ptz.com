%nproc=4
%mem=5760MB
%chk=gaussian_163_water_wb97_ptz.chk
#P wB97XD/6-311g** scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.624542997044162     -0.674971573819288      0.000000000000000


