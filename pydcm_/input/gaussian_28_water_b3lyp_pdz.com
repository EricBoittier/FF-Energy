%nproc=4
%mem=5760MB
%chk=gaussian_28_water_b3lyp_pdz.chk
#P B3LYP/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.715370057752159     -0.521181381241107      0.000000000000000


