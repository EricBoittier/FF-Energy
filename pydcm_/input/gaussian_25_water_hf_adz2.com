%nproc=4
%mem=5760MB
%chk=gaussian_25_water_hf_adz2.chk
#P PBE1PBE/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.644689757141960     -0.592459095831811      0.000000000000000


