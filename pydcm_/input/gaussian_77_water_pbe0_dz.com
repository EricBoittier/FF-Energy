%nproc=4
%mem=5760MB
%chk=gaussian_77_water_pbe0_dz.chk
#P PBE1PBE/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.831961393086877     -0.248715668697516      0.000000000000000


