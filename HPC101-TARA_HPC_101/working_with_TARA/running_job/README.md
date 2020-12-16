# Running job
## SBATCH script
To specifiy resoureses and submit the job to the queuing system 

```
sbatch [sbatch_script]
```

For example, 
```
sbatch submit.sh
```
  
submit.sh
```
#!/bin/bash
#SBATCH -p compute                   # Specify the partition or machine type used [Compute/Memory/GPU]
#SBATCH -N 1  --ntasks-per-node=40   # Specify the number of nodes and the number of core per node
#SBATCH -t 00:10:00                  # Specifies the maximum time limit (hour: minute: second)
#SBATCH -J my_job                    # Specify the name of the Job
#SBATCH -A projxxxx                 # Specify Project account which will be received after Register ** If you do not specify in this section, the job will not be able to run.
#SBATCH                              # You can specify additional options.

module purge                         # unload all modules as they may have previously been loaded.
module load intel                    # Load the module that you want to use. This example is intel

srun  my_hpc_script                  # Run your program or executable code
```
See [ThaiSC website](https://thaisc.io/en/running-jobs-by-slurm-script/) for explanation and more example.

## Interactive
To run the job in the interactive mode. It is important to note that 
1. During the interactive session, the SSH session have to be running.  
2. The interactive session requires X-server. (If this is not set, you will see *srun: error: No DISPLAY variable set, cannot setup x11 forwarding.*)  
   * For Windows, MobaXterm has built-in X-server. If you use MobaXterm, no additional action required. If you use other SSH cilent, please install X-server software and (if applicable) instruct your SSH cilent to use X11 forwarding.  
   * For macOS, please ensure that XQuartz is installed and ssh with either -X or -Y option.  
   * For Linux, please ensure that ssh commnad is executed with either -X or -Y option.  
   
```
sinteract [options]
```
By default, sinteract specifies 1 node with 1 core in devel partition with 30 minute maximum time limit.  

**For example**, to specify 1 node with 40 cores in compute partition using train001 account with 1 hour maximum time limit. 
```
sinteract -N 1 -n 40 -p compute -A train001 -t 01:00:00
```
