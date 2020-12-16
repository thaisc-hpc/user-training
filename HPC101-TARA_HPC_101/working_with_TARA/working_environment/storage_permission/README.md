# Storage : Permission
## File or Directory permission
```
-rw-r--r-- 1 hpcuser2 tarausers  300 Dec 15 09:45 README.md
-rw-r--r-- 1 hpcuser2 tarausers   21 Dec 15 09:37 test_1.txt
-rw-r--r-- 1 hpcuser2 tarausers   21 Dec 15 09:37 test_2.txt
-rw-r--r-- 1 hpcuser2 tarausers   22 Dec 15 09:37 test_3.txt
drwxr-xr-x 2 hpcuser2 tarausers 4096 Dec 15 09:45 test_dir_1
drwxr-xr-x 2 hpcuser2 tarausers 4096 Dec 15 09:45 test_dir_2
```
  
| column | descrition |
|---|---|
| 1st | file or directory permission |
| 2nd | owner (user) |
| 3rd | group that file/directory is belong to |
| 4th | file size (Byte) |
| 5th to 7th | last modified date and time |
| 8th | file/directory name | 
  
For the above example,
The owner (user) is *hpcuser2*. 
The group is *tarausers*. 
The permissions are `-rw-r--r--` or `drwxr-xr-x`.  

### Permission code
The first letter is type (- : regular files, d : directory, l : symbolic link, p : pipe, s : socket, b : block device, c : character device, D : Doors).  
The next 3 letters is the permission of *user (owner)*.  
The another next 3 letters is the permission of *group* (i.e. uesrs in the group).  
The last 3 letters is the permission of *other* (i.e. other users).  
  
### Example,  
`-rw-r--r--` is a regular file that user (owner) can read and write, users in the group (here is tarausers) and other users can only read.  
`drwxr-xr-x` is a directory that user (owner) can read, write and execute, users in the group (here is `tarausers`) and other users can read and execute. Note that, for directory, write permission includes add/remove file/sub-directory inside the directory. 
  
# To change permission 
## Command
```
chmod [option] [file or dir]
```
## chmod option --set permission 

| permission | action | option (letter) | option (number)|
|:---:|:---:|:---:|:---:|
| read | view or open | r | 4 |
| write | edit | w  | 2 |
| execute | execute or run | x | 1 |

## chmod option -- set, add, or remove permission
| option | description |
|:--:|:--:|
| = | set a given permission|
| + | add a given permission |
| - | remove a given permission |

## chmod option -- apply setting to ...
| option | description |
|:--:|:--:|
| u | user |
| g | group |
| o | other |
| a | all |

### Example 
To set r (read), w (write) and x (execute) permission to users and group and set only r (read) permission to other users.
```
-rw-r--r-- 1 hpcuser2 tarausers   21 Dec 15 09:37 test_1.txt
$ chmod u=rwx,g=rwx,o=r test_1.txt
-rwxrwxr-- 1 hpcuser2 tarausers   21 Dec 15 09:37 test_1.txt
```
Alternatively, we can use `chmod 774 test_1.txt`, where the first digit apply to user, second digit apply to group, and the third digit apply to others. The 7 is the summation of 4+2+1 which is stand for rwx. 4 is stand for r.  
  
  
To set r (read), w (write) and x (execute) permission to users and not grant any permission to group and others.  
```
-rw-r--r-- 1 hpcuser2 tarausers   21 Dec 15 09:37 test_2.txt
$ chmod 740 test_2.txt
-rwxr----- 1 hpcuser2 tarausers   21 Dec 15 09:37 test_2.txt
```
To remove r (read) permission from other users.  
```
-rw-r--r-- 1 hpcuser2 tarausers   22 Dec 15 09:37 test_3.txt
$ chmod o-r test_3.txt
-rw-r----- 1 hpcuser2 tarausers   22 Dec 15 09:37 test_3.txt
```

To add s (sticky bit : preserve file permission for all files/directoris created in this directory), w (write) permission for group to file or directory.   
```
drwxr-xr-x 2 hpcuser2 tarausers 4096 Dec 15 09:45 test_dir_1
$ chmod g+sw test_dir_1/
drwxrwsr-x 2 hpcuser2 tarausers 4096 Dec 15 09:45 test_dir_1
```
