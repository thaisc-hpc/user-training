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
| 4nd | file size (Byte) |
| 5nd to 7nd | last modified date and time |
| 8nd | file/directory name | 
  
For above example,
The owner (user) is *hpcuser2*. The group is *tarausers*. The permissions are `-rw-r--r--` or `drwxr-xr-x`.

## Command
```
chmod [option] [file or dir]
```
## chmod option --set a permission 

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

