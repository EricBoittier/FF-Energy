%nproc=4
%mem=5760MB
%chk=gaussian_52_water_wb97_ptz.chk
#P wB97XD/6-311g** scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.838865961084520     -0.443190365020164      0.000000000000000


