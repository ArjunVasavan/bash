#!/usr/bin/env bash

# NOTE: sort
# sort is used to arrange lines of text in a specific order (default: alphabetical)

# -n -> numeric sort (numbers instead of strings)
# -r -> reverse order
# -k -> sort by specific column (field)
# -t -> delimiter (used with -k)
# -u -> unique (remove duplicate lines)
# -o -> output to file
# -c -> check if file is already sorted

sort file.txt
# default sort (alphabetical)

sort -r file.txt
# reverse order (Z to A)

sort -n file.txt
# numeric sort (correct for numbers like 2,10,100)

sort -u file.txt
# remove duplicate lines

sort -o output.txt file.txt
# save sorted result into output.txt

sort -c file.txt
# check if file is already sorted (no output if sorted)

sort -k 2 file.txt
# sort based on column 2 (default delimiter is space)

sort -t ',' -k 2 file.csv
# sort based on column 2 using comma as delimiter

sort -t ',' -k 2 -n file.csv
# numeric sort on column 2

sort -t ',' -k 2 -r file.csv
# reverse sort on column 2

sort -t ',' -k 2,2 file.csv
# strictly sort by only column 2 (not beyond it)

sort file.txt | uniq
# remove duplicates after sorting

# IMPORTANT:
# default sorting is lexicographical (string-based)
# use -n for numbers, otherwise 10 < 2 (wrong for numbers)
# sort works line by line
