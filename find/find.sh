#!/usr/bin/env bash

# NOTE: find
# find is used to search for files/directories based on conditions

# -name    -> search by name
# -iname   -> case-insensitive name search
# -type    -> file type (f=file, d=directory, l=symlink)
# -size    -> file size
# -mtime   -> modified time (days)
# -atime   -> access time
# -perm    -> permissions
# -exec    -> execute command on results
# -delete  -> delete matched files
# -maxdepth -> limit directory depth

find . -name "file.txt"
# find file named file.txt

find . -type f
# find all regular files

find . -type d
# find all directories

find . -type l
# find all symbolic links (symlinks)

find . -lname "*.txt"
# find symlinks pointing to paths matching pattern

find . -type l -exec ls -l {} \;
# show where symlinks point

find . -type l -delete
# delete all symlinks

find . -name "*.c"
# find all .c files

find . -size +1M
# files larger than 1MB

find . -mtime -1
# modified within last 1 day

find . -perm 644
# files with permission 644

find . -maxdepth 1 -type f
# only current directory

find . -name "*.log" -delete
# delete all .log files

find . -name "*.txt" -exec rm {} \;
# delete .txt files using exec

# IMPORTANT:
# '.' means current directory
# {} is replaced by found file
# '\;' ends the -exec command
# find searches recursively by default
