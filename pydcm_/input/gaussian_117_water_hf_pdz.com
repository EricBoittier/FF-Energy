%nproc=4
%mem=5760MB
%chk=gaussian_117_water_hf_pdz.chk
#P HF/6-31g* scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.923486298817006     -0.289004521139487      0.000000000000000


