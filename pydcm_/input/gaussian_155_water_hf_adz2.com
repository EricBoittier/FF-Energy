%nproc=4
%mem=5760MB
%chk=gaussian_155_water_hf_adz2.chk
#P PBE1PBE/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.848633939395751     -0.329145837200913      0.000000000000000


