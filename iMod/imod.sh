#!/bin/bash

# for every dRMSD 0.5A (Calpha atom),  save one frame

# "HE" will fix the dihedrals corresponding
#     to alpha-helices and beta-sheets. 


/home/jinp/iMOD_v1.04_Linux/bin/imorph_gcc inactive_1.pdb active_1.pdb -S "HE"
