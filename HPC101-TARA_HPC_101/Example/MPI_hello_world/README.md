# Overview

This example demonstrates how to run a MPI job by running MPI Hello World from [MPI tutorial : MPI Hello World](https://mpitutorial.com/tutorials/mpi-hello-world/). 

Plesae note that **instead of MPICH2, we use OpenMPI.**

## Useful commands

To load module : `module load [module]`

To list loaded modules : `module list`

To run mpi code : `srun [your mpi code]`

To submit job : `sbatch [submission_script.sh]`

To check job status : `squeue` or `sacct`

To check resource usage : `sbalance`


## Run MPI Hello World on TARA
1. load `foss` module 
```
module load foss
```

2. compile mpi
```
mpicc -o mpi_hello_world mpi_hello_world.c
```

3. prepare sbatch script  
To create sbatch script, specify the following commands in `submit.sh`
```
#!/bin/bash
#SBATCH -p compute
#SBATCH -N 1 --ntasks-per-node=40
#SBATCH -t 00:10:00
#SBATCH -A projxxxx
#SBATCH -J MPIhello


module purge
module load foss 


srun mpi_hello_world
```

4. submit the job
```
sbatch submit.sh
```

# Reference
1. MPI tutorial: https://mpitutorial.com 
