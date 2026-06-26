#!/usr/bin/env bash

# NOTE: ## (Remove Longest Matching Prefix)
# '##' removes the longest matching pattern from the beginning of a variable

# syntax:
# ${variable##pattern}

path="/home/arjun/project/main.c"
echo "${path##*/}"
# output: main.c
# removes everything up to the last '/'

file="archive.tar.gz"
echo "${file##*.}"
# output: gz
# removes everything up to the last '.'

text="abc123abc"
echo "${text##a*}"
# output: bc
# removes the longest match starting with 'a'

url="https://github.com/arjun/repo"
echo "${url##*/}"
# output: repo

# IMPORTANT:
# #  -> removes the shortest matching prefix
# ## -> removes the longest matching prefix

path="/home/arjun/project/main.c"

echo "${path#*/}"
# output: home/arjun/project/main.c

echo "${path##*/}"
# output: main.c
