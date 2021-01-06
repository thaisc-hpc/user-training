#!/bin/bash
#SBATCH -p gpu                       # Specify the partition or machine type used [Compute/Memory/GPU]
#SBATCH -N 1  --ntasks-per-node=40   # Specify the number of nodes and the number of core per node
#SBATCH -t 00:10:00                  # Specifies the maximum time limit (hour: minute: second)
#SBATCH -J SIN101                    # Specify the name of the Job
#SBATCH  -A train001                 # Specify Project account which will be received after Register ** If you do not specify in this section, the job will not be able to run.
#SBATCH                              # You can specify additional options.

module purge                        # unload all modules as they may have previously been loaded.
module load Python                  # load Python module (default is Python3)
module load Singularity             # load Singularity module     


#To run check_library.py using Python3 in the module system
echo " -- running check_library.py using Python3 in the module system --"
python check_library.py

echo "  "
echo " ---------------------------------------------------------------------"
echo "  "

#To run check_library.py using Singularity SIF
echo " -- running check_library.py using Singularity SIF --"
singularity exec tf.sif python check_library.py

echo "  "
echo " ---------------------------------------------------------------------"
echo "  "


#To run the scrpit WITHOUT using GPU(s)
echo " -- checking GPU(s) (WITHOUT --nv option)  --"
singularity exec tf.sif nvidia-smi                # Run your program or executable code

echo "  "
echo " ---------------------------------------------------------------------"
echo "  "


#To run the scrpit WITH using GPU(s)
echo " -- checking GPU(s) (WITH --nv option)  --"
singularity exec --nv tf.sif nvidia-smi

