#!/bin/bash
cat>distance.in<<EOD
parm /home/jinp/project/NLRP3/inactive_with_NEK7/MD1/inactive_add_nek7_1_parm.pdb
trajin /home/jinp/project/NLRP3/inactive_with_NEK7/MD1/inactive_add_nek7_1_chulihou.xtc
rms tofirst :1-894@CA,C,N,O 
rms fit :1-558,559-894
distance motifA-B :1-558&!@H= :559-894&!@H= out inactive_motifA-B.dat
run
EOD


cpptraj -i distance.in
rm distance.in
