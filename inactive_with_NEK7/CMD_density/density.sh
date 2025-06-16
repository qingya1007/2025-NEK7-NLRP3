#!/bin/bash
gmx densmap -f align.xtc -s inactive_add_nek7_1.tpr -od densmap1.dat -n 895-1172.ndx
gmx densmap -f align.xtc -s inactive_add_nek7_1.tpr -od densmap1_LRR.dat -n 559-894.ndx
