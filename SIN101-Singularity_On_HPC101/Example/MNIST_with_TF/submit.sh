#!/bin/bash
#SBATCH -p gpu                  # Specify the partition or machine type used [Compute/Memory/GPU]
#SBATCH -N 1  --ntasks-per-node=40   # Specify the number of nodes and the number of core per node
#SBATCH -t 00:30:00                 # Specifies the maximum time limit (hour: minute: second)
#SBATCH -J SIN101                   # Specify the name of the Job
#SBATCH  -A train001                 # Specify Project account which will be received after Register ** If you do not specify in this section, the job will not be able to run.
#SBATCH                             # You can specify additional options.

module purge                        # unload all modules as they may have previously been loaded.
module load Singularity                   # Load the module that you want to use.

singularity exec --nv tensorflow_2.3.1-gpu.sif python mnist.py                  # Run your program or executable code
