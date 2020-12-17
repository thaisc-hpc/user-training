#!/bin/bash
#SBATCH -p devel
#SBATCH -N 1 --ntasks-per-node=1
#SBATCH -t 00:10:00
#SBATCH -A train001
#SBATCH -J PythonExample


module purge
module load Python/3.7.4-GCCcore-8.3.0 

python titanic_case_I.py 

