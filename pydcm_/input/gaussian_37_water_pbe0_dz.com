%nproc=4
%mem=5760MB
%chk=gaussian_37_water_pbe0_dz.chk
#P PBE1PBE/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.877723845951941     -0.268860094918502      0.000000000000000


