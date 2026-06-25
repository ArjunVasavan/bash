#!/usr/bin/env bash

# NOTE: source (or .)
# source executes commands from a file in the CURRENT shell
# changes made by the script remain in the current shell

# source and '.' are equivalent

source script.sh
# execute script in current shell

. script.sh
# same as source script.sh

# example:

# script.sh
name="Arjun"

source script.sh
echo "$name"
# output: Arjun

# without source

bash script.sh
echo "$name"
# no output
# script runs in a child shell, so variables are lost

# sourcing environment variables

source ~/.bashrc
# reload .bashrc without opening a new terminal

source ~/.profile
# reload .profile

# sourcing current directory script

source ./script.sh
# execute script from current directory

# passing arguments

source script.sh arg1 arg2

# inside script:
echo "$1"
echo "$2"

# IMPORTANT:
# source does NOT create a new process
# commands run in the current shell
# variables, aliases, functions, and current directory changes persist

# common use cases:
# - load environment variables
# - define shell functions
# - define aliases
# - reload .bashrc after editing

# source vs bash

source script.sh
# current shell (changes persist)

bash script.sh
# child shell (changes disappear after script exits)
