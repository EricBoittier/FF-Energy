%nproc=4
%mem=5760MB
%chk=gaussian_169_water_b3lyp_pdz.chk
#P B3LYP/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.775661418068535     -0.527804159553244      0.000000000000000


