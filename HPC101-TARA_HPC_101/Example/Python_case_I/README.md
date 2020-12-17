# Overview
This example demonstrates how to run a sample Python script. It covers the following topics:
   1. How to transfer file from local PC to TARA
   2. How to setup submission script (almost from scratch)
   3. How to install local library
   4. How to submit the job
   5. How to check the output
   
## Setup 
To obtain necessary files : either clone this repository or directly download the data and the codes.

## Useful commands
To load module : `module load [module]`  
To list loaded modules : `module list`  
To submit job : `sbatch [submission_script.sh]`  
To check job status : `squeue` or `sacct`  
To check resource usage : `sbalance`  


## Reference
The Titanic data set is taken from [Kaggle dataset : Titanic](https://www.kaggle.com/heptapod/titanic). Please note that some columns were removed. 
