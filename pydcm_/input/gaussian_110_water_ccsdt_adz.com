%nproc=4
%mem=5760MB
%chk=gaussian_110_water_ccsdt_adz.chk
#P CCSD(T)/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.757849731580941     -0.470150432854464      0.000000000000000
H     -0.797710045473723     -0.500340858500909      0.000000000000000


