%nproc=4
%mem=5760MB
%chk=gaussian_174_water_wb97_ptz.chk
#P wB97XD/6-311g** scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.875935006055424     -0.383308195722444      0.000000000000000


