%nproc=4
%mem=5760MB
%chk=gaussian_20_water_hf_adz.chk
#P HF/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.511610631429928     -0.693622271462472      0.000000000000000


