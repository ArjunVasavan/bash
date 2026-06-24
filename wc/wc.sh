#!/usr/bin/env bash

# NOTE: wc (word count)
# wc is used to count lines, words, and characters in a file or input

# -l -> count number of lines
# -w -> count number of words
# -c -> count number of bytes
# -m -> count number of characters
# -L -> length of longest line

wc file.txt
# shows: lines words bytes filename

wc -l file.txt
# count number of lines

wc -w file.txt
# count number of words

wc -c file.txt
# count number of bytes

wc -m file.txt
# count number of characters

wc -L file.txt
# show length of longest line

echo "hello world" | wc -w
# count words from input (output: 2)

cat file.txt | wc -l
# count lines using pipe (less efficient)

wc -l file.txt
# better way (direct file input)

wc -l file1.txt file2.txt
# shows line count for each file + total

# IMPORTANT:
# default output format: lines words bytes filename
# word = sequence of non-space characters
# bytes and characters may differ (encoding dependent)
