#!/bin/bash
gmx densmap -f align_new.xtc -s active_nek7_1.tpr -od nek7_new.dat -n 895-1172.ndx
gmx densmap -f align_new.xtc -s active_nek7_1.tpr -od lrr_new.dat -n 559-894.ndx
