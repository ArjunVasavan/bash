#!/usr/bin/env bash

# NOTE: ? (Required Variable Operator)
# '?' is used to ensure that a variable is set.
# If the variable is UNSET, bash prints an error message and exits.

# syntax:
# ${variable?error_message}

user="Arjun"
echo "${user?User variable is required}"
# output: Arjun

unset user
echo "${user?User variable is required}"
# output:
# bash: user: User variable is required
# script exits

user=""
echo "${user?User variable is required}"
# output: (empty)
# no error because the variable is SET (even though it's empty)

name=${1?Please provide your name}
# if $1 is provided, use it
# otherwise print the error message and exit

echo "$name"

# Example:
# ./script.sh Abhimanyu
# output: Abhimanyu

# ./script.sh
# output:
# script.sh: line X: 1: Please provide your name

# IMPORTANT:
# '?' checks only whether the variable is UNSET
# an empty string is considered a valid value
# use ':?' if you want to treat both UNSET and EMPTY as errors
