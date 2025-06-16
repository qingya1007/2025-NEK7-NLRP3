#!/bin/bash

cat > rmsdf.in <<EOD
parm /home/jinp/project/NLRP3/inactive_with_NEK7/MD1/inactive_add_nek7_1_parm.pdb 
trajin /home/jinp/project/NLRP3/inactive_with_NEK7/MD1/inactive_add_nek7_1_chulihou.xtc 1 -1  
#reference /home/jinp/project/NLRP3/active_no_NEK7/md8ej4/MD3/active_3_parm.pdb parm [refparm] [refff]
rms first :1-894@CA,C,N,O first out rmsd_inactive_nek7_ADP.dat
atomicfluct out rmsf_inactive_nek7_ADP.dat :1-894@CA,C,N,O byres

run
EOD
cpptraj -i rmsdf.in
