%nproc=4
%mem=5760MB
%chk=gaussian_121_water_hf_adz.chk
#P HF/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.511473238583472     -0.633939350397573      0.000000000000000


