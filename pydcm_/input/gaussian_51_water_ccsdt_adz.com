%nproc=4
%mem=5760MB
%chk=gaussian_51_water_ccsdt_adz.chk
#P CCSD(T)/aug-cc-pVDZ scf(maxcycle=200) 

Gaussian input

0 1
O      0.000000000000000      0.117510000000000      0.000000000000000
H      0.718337232541267     -0.439511202778632      0.000000000000000
H     -0.818786786066314     -0.472124801350120      0.000000000000000


