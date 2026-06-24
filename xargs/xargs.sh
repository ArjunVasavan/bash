#!/usr/bin/env bash

# NOTE: xargs
# xargs builds and executes commands using input from stdin (pipe)
# it converts input into arguments for another command

# -n -> number of arguments per command
# -I -> placeholder for input
# -0 -> handle null-separated input (safe for spaces)
# -p -> prompt before execution
# -t -> print command before executing

echo "file1.txt file2.txt" | xargs rm
# passes filenames as arguments to rm

find . -name "*.txt" | xargs rm
# delete all .txt files (unsafe if filenames have spaces)

find . -name "*.txt" -print0 | xargs -0 rm
# safe version (handles spaces and special characters)

echo "1 2 3 4" | xargs -n 2 echo
# runs: echo 1 2
# then: echo 3 4

echo "file.txt" | xargs -I {} cp {} backup_{}
# {} is placeholder replaced by input

find . -name "*.c" | xargs gcc
# compile all .c files

find . -type f | xargs wc -l
# count lines in all files

echo "file1 file2" | xargs -t rm
# prints command before executing

echo "file1 file2" | xargs -p rm
# asks for confirmation before running

# IMPORTANT:
# xargs converts input into command arguments
# useful when commands don't accept stdin directly
# always use -0 with find -print0 for safety (spaces in filenames)
