%nproc=4
%mem=5760MB
%chk=gaussian_124_water_pbe0_adz.chk
#P PBE1PBE/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.587219180486719     -0.576359320598992      0.000000000000000


