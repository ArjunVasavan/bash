#!/usr/bin/env bash

# NOTE: ':' (Colon in Bash)
# ':' has multiple meanings depending on where it is used.

# Null Command

:
# does nothing
# always returns exit status 0

: > file.txt
# create an empty file or truncate an existing file

while :; do
    echo "Running..."
    break
done
# infinite loop

# Substring Expansion

name="Abhimanyu"

echo "${name:0}"
# output: Abhimanyu

echo "${name:1}"
# output: bhimanyu

echo "${name:2:4}"
# output: hima
# start at index 2
# take 4 characters

echo "${name: -3}"
# output: nyu
# last 3 characters

echo "${name: -5:2}"
# output: ma

# Default Value

echo "${name:-Guest}"
# use Guest if name is unset or empty

# Assign Default Value

echo "${name:=Guest}"
# assign Guest if name is unset or empty

# Required Variable

echo "${name:?name is required}"
# error if name is unset or empty

# Alternate Value

echo "${name:+Present}"
# print "Present" if name is set and not empty

# Remove Prefix / Suffix

file="/home/arjun/main.c"

echo "${file##*/}"
# output: main.c

echo "${file%/*}"
# output: /home/arjun

# SUMMARY:

# :                  -> null command

# ${var:1}           -> substring
# ${var:1:4}         -> substring with length

# ${var:-value}      -> default value
# ${var:=value}      -> assign default value
# ${var:?message}    -> error if unset or empty
# ${var:+value}      -> alternate value

# ${var#pattern}     -> remove shortest prefix
# ${var##pattern}    -> remove longest prefix
# ${var%pattern}     -> remove shortest suffix
# ${var%%pattern}    -> remove longest suffix
