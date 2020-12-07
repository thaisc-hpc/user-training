# Overview
This directory contains the examples of singularity definition files using in [SIN101: Singularity On HPC 101 course](https://mooc.learn.in.th/main/detail/THAISC/SIN101/THAISC_000002).  


## Useful command
To build a Singularity image file (SIF) from a definition file (DEF), using the following command :  

```
sudo singularity build [SIF] [DEF]  
```

For example,  

```
sudo singularity build my_TF+requirement.sif my_definitionFile_requirement.def  
```

or  

```
sudo singularity build my_TF+OpenCV.sif my_definitionFile_addOpenCV.def  
```
