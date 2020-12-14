#!/bin/bash 
#SBATCH -p compute 
#SBATCH -N 1 --ntasks-per-node=1
#SBATCH -t 00:10:00
#SBATCH -A tutorial
#SBATCH -J test_sbatch

#SBATCH --reservation=thaisc_12

module purge
module load Python
sleep 30
python hostname.py




