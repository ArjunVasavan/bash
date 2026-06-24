#!/usr/bin/env bash

# NOTE: grep (global regular expression print)
# grep is used to search for patterns in text and print matching lines

# -i -> ignore case (case-insensitive search)
# -v -> invert match (show non-matching lines)
# -n -> show line numbers
# -r -> recursive search in directories
# -l -> show only filenames with matches
# -c -> count number of matching lines
# -w -> match whole word only
# -o -> print only matched part
# -e -> multiple patterns
# -E -> extended regex (no need to escape +, ?, |)

grep "error" file.txt
# print lines containing "error"

grep -i "error" file.txt
# case-insensitive search (Error, ERROR, etc.)

grep -v "error" file.txt
# print lines NOT containing "error"

grep -n "error" file.txt
# show line numbers with matches

grep -c "error" file.txt
# count number of matching lines

grep -w "error" file.txt
# match whole word "error" only (not "errors")

grep -o "error" file.txt
# print only the matched word, not entire line

grep -e "error" -e "fail" file.txt
# search for multiple patterns

grep -E "error|fail" file.txt
# same as above using extended regex

grep "^error" file.txt
# lines starting with "error"

grep "error$" file.txt
# lines ending with "error"

grep "." file.txt
# lines with at least one character (non-empty lines)

grep -r "error" .
# search recursively in current directory

grep -l "error" *.txt
# print filenames that contain "error"

grep "error" file.txt | wc -l
# count matches using pipe

# IMPORTANT:
# grep prints entire line by default
# patterns are regular expressions
# use -E for advanced regex (cleaner syntax)
