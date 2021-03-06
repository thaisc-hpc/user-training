#!/bin/bash
#SBATCH -p devel                    # Specify the partition or machine type used [Compute/Memory/GPU]
#SBATCH -N 1  --ntasks-per-node=1   # Specify the number of nodes and the number of core per node
#SBATCH -t 00:10:00                 # Specifies the maximum time limit (hour: minute: second)
#SBATCH -J SIN101                   # Specify the name of the Job
#SBATCH -A train001                 # Specify project account which will be received after register ** If you do not specify in this section, the job will not be able to run.
#SBATCH                             # You can specify additional options.

module purge                        # unload all modules as they may have previously been loaded.

# uncomment the below line to use Python (option 1)
#module load Python/3.7.4-GCCcore-8.3.0

# uncomment the below line to use Singularity (option 2 or 3)
#module load Singularity                   # Load the module that you want to use.

# ------  Run your program or executable code ------
# uncomment set of specific lines to use an appropriate commands
#option 1 : using Python/3.7.4-GCCcore-8.3.0
#python check_opencv2.py

#option 2 : using original Singularity image
#echo "Run using original Tensorflow image (tensorflow_2.1.2-gpu.sif)"
#singularity exec tensorflow_2.1.2-gpu.sif python3 check_opencv2.py

#option 3 : using customized Singularity image
#echo "Run using customized Tensorflow image (my_TF.sif)"
#singularity exec my_TF.sif python3 check_opencv2.py

# Note : Singularity command : singularity exec [SIF] [command] [command options]
