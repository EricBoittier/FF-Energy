%nproc=4
%mem=5760MB
%chk=gaussian_81_water_hf_adz.chk
#P HF/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.539607080089714     -0.675273198054205      0.000000000000000


