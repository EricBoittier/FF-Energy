%nproc=4
%mem=5760MB
%chk=gaussian_144_water_hf_pdz.chk
#P HF/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.797362230620614     -0.500789662930297      0.000000000000000
H     -0.619519465441984     -0.614525949894866      0.000000000000000


