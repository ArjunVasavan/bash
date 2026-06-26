#!/usr/bin/env bash

# NOTE: :? (Required Variable Operator)
# ':?' is used to ensure that a variable is set AND not empty.
# If the variable is unset or empty, bash prints an error message and exits.

# syntax:
# ${variable:?error_message}

user="Arjun"
echo "${user:?User variable is required}"
# output: Arjun

unset user
echo "${user:?User variable is required}"
# output:
# bash: user: User variable is required
# script exits

user=""
echo "${user:?User variable is required}"
# output:
# bash: user: User variable is required
# script exits

user="Arjun"
name=${1:?Please provide your name}
# if $1 is provided and not empty, use it
# otherwise print the error message and exit

echo "$name"

# Example:
# ./script.sh Abhimanyu
# output: Abhimanyu

# ./script.sh
# output:
# script.sh: line X: 1: Please provide your name

# ./script.sh ""
# output:
# script.sh: line X: 1: Please provide your name

# IMPORTANT:
# '?'  -> checks only if variable is UNSET
# ':?' -> checks if variable is UNSET OR EMPTY
