# Overview
There are 3 steps :
1. Download data
2. Training model
3. Checking result
  
## Step 1 Download data
Because the computing units in TARA (compute, memory, gpu, and dgx partition) do not have an internet access, we have to download the data from the frontend node.  
To download data set run the `setup.py` using the following command
```
module load Singularity
singularity pull docker://tensorflow/tensorflow:2.3.1-gpu
singularity exec tensorflow_2.3.1-gpu.sif python setup.py
```

## Step 2 Training the model
To train model, submit job to the system using the following command 
```
sbatch submit.sh
```

## Step 3 Checking result
To check the trining result, check the slurm-xxxxxx.out
either
```
vi slurm-xxxxxx.out
```
or
```
grep accuracy slurm-xxxxxx.out
```
  
# Reference
1. Fashion MNIST data set : [Kaggle dataset](https://www.kaggle.com/zalando-research/fashionmnist)
2. https://www.tensorflow.org/tutorials/keras/classification
