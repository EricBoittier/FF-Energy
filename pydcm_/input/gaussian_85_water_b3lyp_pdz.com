%nproc=4
%mem=5760MB
%chk=gaussian_85_water_b3lyp_pdz.chk
#P B3LYP/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.644689757141960     -0.592459095831811      0.000000000000000


