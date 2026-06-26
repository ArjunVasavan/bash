#!/usr/bin/env bash

# NOTE: % (Remove Shortest Matching Suffix)
# '%' removes the shortest matching pattern from the end of a variable

# syntax:
# ${variable%pattern}

path="/home/arjun/project/main.c"
echo "${path%/*}"
# output: /home/arjun/project
# removes everything after the last '/'

file="archive.tar.gz"
echo "${file%.*}"
# output: archive.tar
# removes shortest extension

text="abc123abc"
echo "${text%c}"
# output: abc123ab
# removes last matching 'c'

url="https://github.com/arjun/repo"
echo "${url%/*}"
# output: https://github.com/arjun

# IMPORTANT:
# %  -> removes the shortest matching suffix
# %% -> removes the longest matching suffix

path="/home/arjun/project/main.c"

echo "${path%/*}"
# output: /home/arjun/project

echo "${path%%/*}"
# output:
# removes the longest suffix matching '/*'
