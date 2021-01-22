# TARA Utilities
## sinfo
To check available computing resources
```
$ sinfo
```
**Example**
```
[hpcuser2@tara-frontend-1 ~]$ sinfo
PARTITION      AVAIL  TIMELIMIT  NODES  STATE NODELIST
devel             up    2:00:00      2   idle tara-c-[001-002]
compute*          up 5-00:00:00      1    mix tara-c-034
compute*          up 5-00:00:00     57  alloc tara-c-[003-033,035-060]
memory            up 5-00:00:00      5    mix tara-m-[001-003,005-006]
memory            up 5-00:00:00      2  alloc tara-m-[004,007]
memory            up 5-00:00:00      1   idle tara-m-008
memory-preempt    up 5-00:00:00      5    mix tara-m-[001-003,005-006]
memory-preempt    up 5-00:00:00      2  alloc tara-m-[004,007]
memory-preempt    up 5-00:00:00      1   idle tara-m-008
gpu               up 5-00:00:00      2   idle tara-g-[001-002]
dgx               up 5-00:00:00      1   idle tara-dgx1-003
dgx-preempt       up 5-00:00:00      2   idle tara-dgx1-[001-002]
```

| Item | Description |
|:-- |:--|
|PARTITION | partition name|
|AVAIL | partition status (up : working, down : not working) |
|TIMELIMIT | maximum time that a job can run on this partition (days-hours:minutes:seconds)|
|NODES | number of nodes in the partition |
|STATE | partition availability (idle : free, alloc : busy, mix : some core(s) in node is free)  |
|NODELIST | list of nodes in the partition |


## squeue
To see job status in the queueing systems
```
$ squeue
```

**Example**

```
[tarauser@tara-frontend-1 ~]$ squeue -u tarauser
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
            151602   compute    test3 tarauser PD       0:00      1 (Priority)
            140215   compute    test2 tarauser  R   03:25:08      1 tara-c-055
            149496   compute    test1 tarauser  R 2-02:11:27      1 tara-c-042
```

|Item| Description|
| :-- | :--|
| JOBID |ID of the specific job |
| PARTITION | partition which job is running/queuing on |
| NAME | name of the specific job  |
| USER | user who owns/run the job  |
| ST | Job status (PD : pending, R : running) |
| TIME | elapsed time of the running job (days-hours:minutes:seconds)|
| NODE | the number of node used in the run |
| NODELIST(REASON) | list of node used to run (reason why the job is pending) |


## sacct
To check job status
```
$ sacct
```

## scancel
To cancel job in the queue or running job
```
$ scancel [JOBID]
```
**Example**
```
scancel 140215
```


## sbalance
To see check remaining balance
```
$ sbalance
```
or using `-d` to see detail in the user level. 
```
$ sbalance -d
```
  
## myquota
To check available space
```
$ myquota
```
