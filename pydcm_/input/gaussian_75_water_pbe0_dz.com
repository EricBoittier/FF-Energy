%nproc=4
%mem=5760MB
%chk=gaussian_75_water_pbe0_dz.chk
#P PBE1PBE/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.804388165704628     -0.305858254447998      0.000000000000000


