%nproc=4
%mem=5760MB
%chk=gaussian_33_water_ccsdt_adz.chk
#P CCSD(T)/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.815409573591210     -0.387255517142169      0.000000000000000


