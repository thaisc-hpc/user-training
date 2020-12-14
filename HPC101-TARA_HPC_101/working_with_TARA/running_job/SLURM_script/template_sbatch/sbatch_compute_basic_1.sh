#!/bin/bash
#SBATCH -p compute
#SBATCH -N 1 --ntasks-per-node=40
#SBATCH -t 00:10:00
#SBATCH -A projxxxx
#SBATCH -J test_sbatch


module purge
module load GCC 


srun slurm_hostname

