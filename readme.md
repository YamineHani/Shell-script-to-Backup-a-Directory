# Backup a Directory

This project allows the user to backup a specific directory every specific period of time and to keep a certain number of backups of his choosing.

## Project Files
1. backupd.sh:the bash script file
2. source: it is the source directory that we need to backup.
3. backup: it contains all the backups that occured.
4. directory_info.last: it contains the information of the source directory when it was last checked.
5. directory_info.new: it contains the current information of the source.
6. makefile: it is used to run the bash script.

## How to run the code
First choose the directory that you want to backup, then go to the terminal and let it your current directory. 

For example, if the directory is in the desktop.
```bash
$ cd Desktop
```

Then, type "make" to begin the backup.
```bash
$ make
```
Make sure that your file is executable.
```bash
$ chmod +x ./backupd.sh
```
## Output
A backup will be created inside the backup directory named:'YYYY-MM-DD-hh-mm-ss'.And after the selected period of time, if any change occurred in the source directory, a new backup will be created.If the total number of backups exceeds the maximum number, the oldest backup will be automatically removed and replaced by the new one.

