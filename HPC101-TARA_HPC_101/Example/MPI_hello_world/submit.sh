#!/bin/bash
#SBATCH -p compute
#SBATCH -N 1 --ntasks-per-node=40
#SBATCH -t 00:10:00
#SBATCH -A train001
#SBATCH -J MPIhello


module purge
module load foss 

srun mpi_hello_world
