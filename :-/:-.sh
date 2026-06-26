#!/usr/bin/env bash

# NOTE: :- (Default Value Operator)
# ':-' is used to provide a default value if a variable is unset or empty

# syntax:
# ${variable:-default_value}

user="Arjun"

echo "${user:-Guest}"
# output: Arjun

unset user
echo "${user:-Guest}"
# output: Guest

user=""
echo "${user:-Guest}"
# output: Guest

user="Arjun"
name=${1:-$user}
# if first command-line argument ($1) is given, use it
# otherwise use the value stored in $user

echo "$name"

# Example:
# ./script.sh
# output: Arjun

# ./script.sh Abhimanyu
# output: Abhimanyu

# IMPORTANT:
# the default value can be another variable
# ':-' only returns the default value
# it does NOT modify the original variable
