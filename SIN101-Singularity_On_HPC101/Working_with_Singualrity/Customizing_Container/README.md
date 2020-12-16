# Overview
Steps to customizing container :
1. Choose base image that will be modified 
2. Pull the image from the registry : `singularity pull [SIF] <url>`
3. Build the image in sandbox mode : `sudo singularity build --sandbox <sandbox_dir> <SIF>`
4. Shell into the sandbox with writable mode : `sudo sinularity shell --writable <sandbox_dir>`
5. Install addtional library/software/application
6. Exit from the sandbox : `exit`
7. Build the new SIF from the sandbox : `singularity build <newSIF> <sandbox_dir>`

## Example
Adding OpenCV library in the Tensorflow 2.1.2-gpu image from Docker hub. 
```
$ singularity pull docker://tensorflow/tensorflow:2.1.2-gpu
$ sudo singularity build --sandbox my_TF/ tensorflow_2.1.2-gpu.sif
$ sudo singualrity shell --writable my_TF
> apt-get -y update
> apt-get -y install libgl-dev
> pip install --upgrade pip
> pip install opencv-python
> exit
$ sudo singularity build my_TF.sif my_TF/
```
