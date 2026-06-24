#!/usr/bin/env bash

# NOTE: awk (pattern scanning and processing)
# awk is used for processing structured text (like columns in files)
# it works line by line and splits input into fields automatically

# -F -> field separator (delimiter)
# NR -> current line number
# NF -> number of fields in current line
# $0 -> entire line
# $1,$2,... -> field (column) values
# BEGIN -> runs before processing input
# END   -> runs after processing input

awk -F ',' '{print $1}' file.csv
# print first column

awk -F ',' '{print $1, $3}' file.csv
# print column 1 and 3

awk -F ',' '{print $1, $2, $3}' file.csv
# print multiple columns

awk -F ',' '{print $NF}' file.csv
# print last column

awk '{print NR, $0}' file.txt
# print line number and full line

awk 'NR==2' file.txt
# print only line 2

awk 'NR>=2 && NR<=5' file.txt
# print lines from 2 to 5

awk '/error/' file.txt
# print lines matching "error" (regex)

awk '/^error/' file.txt
# print lines starting with "error"

awk '/error$/' file.txt
# print lines ending with "error"

awk '!/error/' file.txt
# print lines NOT matching "error"

awk '{print length($0)}' file.txt
# print length of each line

awk '{sum += $1} END {print sum}' file.txt
# sum values of column 1

awk 'BEGIN {print "start"} {print $0} END {print "end"}' file.txt
# BEGIN runs before input, END runs after input

awk -F ',' '$3 > 100' file.csv
# print rows where column 3 > 100

awk -F ',' '{if ($3 > 100) print $1}' file.csv
# condition + print specific column

awk -F ',' '{print toupper($1)}' file.csv
# convert column 1 to uppercase

awk -F ',' '{print tolower($1)}' file.csv
# convert column 1 to lowercase

# IMPORTANT:
# awk automatically splits fields using delimiter
# default delimiter is space
# patterns are written directly without quotes like sed
# awk is more powerful than cut and tr for structured data
