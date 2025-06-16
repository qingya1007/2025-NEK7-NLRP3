#!/bin/bash
cat>distance.in<<EOD
parm /home/jinp/project/NLRP3/active_no_NEK7/md8ej4/MD1/active_1_parm.pdb
trajin /home/jinp/project/NLRP3/active_no_NEK7/md8ej4/MD1/active_1_chulihou.xtc
rms tofirst :1-894@CA,C,N,O 
rms fit :1-558,559-894
distance motifA-B :1-558&!@H= :559-894&!@H= out active_motifA-B.dat
run
EOD


cpptraj -i distance.in
rm distance.in
