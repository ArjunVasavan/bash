#!/usr/bin/env bash

# NOTE: [ ] (Character Class)
# [ ] matches exactly ONE character from a set or range

# syntax:
# [abc]       -> matches 'a', 'b', or 'c'
# [a-z]       -> matches any lowercase letter
# [A-Z]       -> matches any uppercase letter
# [0-9]       -> matches any digit
# [a-zA-Z]    -> matches any letter
# [a-zA-Z0-9] -> matches any letter or digit
# [!abc]      -> matches any character except a, b, or c
# [!a-z]      -> matches any character except lowercase letters
# [!0-9]      -> matches any non-digit

# Example:

ls file[123].txt
# matches:
# file1.txt
# file2.txt
# file3.txt

ls file[a-c].txt
# matches:
# filea.txt
# fileb.txt
# filec.txt

ls file[A-Z].txt
# matches:
# fileA.txt ... fileZ.txt

ls file[0-9].txt
# matches:
# file0.txt ... file9.txt

ls file[!0-9].txt
# matches:
# filea.txt
# fileX.txt
# file_.txt
# (anything except digits)

ls file[a-zA-Z0-9].txt
# matches any single letter or digit

# IMPORTANT:
# [ ] matches ONLY ONE character
# use multiple [ ] to match multiple characters

# Example:

file12.txt

file[0-9][0-9].txt
# matches file12.txt

file[0-9].txt
# does NOT match file12.txt (only one digit)
