%nproc=4
%mem=5760MB
%chk=gaussian_175_water_b3lyp_pdz.chk
#P B3LYP/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.892879713086875     -0.352433419953828      0.000000000000000


