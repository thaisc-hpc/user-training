# Storage: User Home and Project Home
 
## User Home
Located at : `/tarafs/data/home/[username]`  
For example, /tarafs/data/home/hpcuser1 .

## Project Home
Located at : `/tarafs/data/project/[projxxxx-shorname]`   
For example, /tarafs/data/project/train001-training .  

## To check available space
Execute `myquota` command, it will print out space usage and quota.
```
$ myquota

                           Disk Space Limits         File Count Limits
                          usage        quota        usage        quota
                     -----------------------  ------------------------
Home                     30.48M          50G          207       300000
train001-training         23.4G         200G       234081      2000000
```

