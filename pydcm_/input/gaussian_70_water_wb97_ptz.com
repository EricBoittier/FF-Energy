%nproc=4
%mem=5760MB
%chk=gaussian_70_water_wb97_ptz.chk
#P wB97XD/6-311g** scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.718650576150262     -0.439106878471087      0.000000000000000


