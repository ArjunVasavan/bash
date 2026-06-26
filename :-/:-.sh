#!/usr/bin/env bash

# NOTE: :- (Default Value Operator)
# ':-' is used to provide a default value if a variable is unset or empty

# syntax:
# ${variable:-default_value}

name="Arjun"
echo "${name:-Guest}"
# output: Arjun
# variable is set, so default value is ignored

unset name
echo "${name:-Guest}"
# output: Guest
# variable is unset, so default value is used

name=""
echo "${name:-Guest}"
# output: Guest
# variable is empty, so default value is used

name=${1:-Arjun}
# if first command-line argument ($1) is given, use it
# otherwise use "Arjun"

echo "$name"

# Example:
# ./script.sh
# output: Arjun

# ./script.sh Abhimanyu
# output: Abhimanyu

# IMPORTANT:
# ':-' only returns the default value
# it does NOT change the original variable
