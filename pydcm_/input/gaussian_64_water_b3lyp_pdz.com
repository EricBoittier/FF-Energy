%nproc=4
%mem=5760MB
%chk=gaussian_64_water_b3lyp_pdz.chk
#P B3LYP/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.587219180486719     -0.576359320598992      0.000000000000000


