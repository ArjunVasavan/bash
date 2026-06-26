#!/usr/bin/env bash

# NOTE: %% (Remove Longest Matching Suffix)
# '%%' removes the longest matching pattern from the end of a variable

# syntax:
# ${variable%%pattern}

path="/home/arjun/project/main.c"
echo "${path%%/*}"
# output:
# removes everything from the first '/' to the end
# result: (empty string)

file="archive.tar.gz"
echo "${file%%.*}"
# output: archive
# removes the longest extension

text="abc123abc123"
echo "${text%%1*}"
# output: abc
# removes the longest suffix starting with '1'

url="https://github.com/arjun/repo"
echo "${url%%/*}"
# output: https:
# removes the longest suffix matching '/*'

# IMPORTANT:
# %  -> removes the shortest matching suffix
# %% -> removes the longest matching suffix

file="archive.tar.gz"

echo "${file%.*}"
# output: archive.tar

echo "${file%%.*}"
# output: archive
