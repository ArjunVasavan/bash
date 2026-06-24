#!/usr/bin/env bash

# NOTE: shellcheck
# shellcheck is a static analysis tool for bash scripts
# it finds syntax errors, unsafe patterns, and bad practices

# basic usage
shellcheck script.sh
# analyzes script and prints warnings/errors

# check multiple scripts
shellcheck *.sh

# common warning: unquoted variables
echo $var
# warning (SC2086) → should be:
echo "$var"
# prevents word splitting and globbing

# another common issue
if [ $x = 1 ]
# should be:
if [ "$x" = 1 ]
# prevents errors if variable is empty

# undefined variable warning
echo "$name"
# warning (SC2154) if name is not set

# ignoring a specific warning
# shellcheck disable=SC2086
echo $var

# install (ubuntu/debian)
sudo apt install shellcheck

# IMPORTANT:
# shellcheck does not execute the script
# it only analyzes code (static analysis)
# helps catch bugs before running scripts
# widely used for writing safe and clean bash scripts
