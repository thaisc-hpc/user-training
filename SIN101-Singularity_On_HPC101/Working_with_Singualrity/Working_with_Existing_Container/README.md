# Overview

When thare is an existing SIF, to run your script via SIF environment, there are 2 steps :
1. Pull the SIF from the regsitry using `singularity pull` command

```
singularity pull [SIF] <URL>
```

For example, to pull the tensorflow image from the NVIDIA NGC and save as TF.sif

```
singularity pull TF.sif docker://nvcr.io/nvidia/tensorflow:20.11-tf2-py3
```

2. Run your script usning `singularity exec` command

```
singularity exec [exec options] <command> [command options]
```

For example, to run the python script called "check_gpu.py" using the tensorflow image 

```
singularity exec --nv TF.sif python check_gpu.py
```

Note: using `--nv` option to enable GPU. 
