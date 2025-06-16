#!/bin/bash
cat > parm.in << EOD  


parm inactive_add_nek7_1_parm.pdb [nc]

trajin inactive_nek7.xtc parm [nc]
hbond HB out hbond.dat @N,H,C,CA,O series uuseries solutehb.agr avgout hbavg.dat printatomnum


run
# Perform lifetime analysis
runanalysis lifetime HB[solutehb] out lifehb.dat


EOD
cpptraj -i parm.in
rm parm.in
