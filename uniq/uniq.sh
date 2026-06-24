#!/usr/bin/env bash

# NOTE: uniq
# uniq is used to filter duplicate lines (only works on ADJACENT duplicates)

# -c -> count occurrences of each line
# -d -> show only duplicate lines
# -u -> show only unique (non-repeated) lines
# -i -> ignore case while comparing
# -f -> skip fields (columns) before comparison
# -s -> skip characters before comparison

uniq file.txt
# removes adjacent duplicate lines

sort file.txt | uniq
# removes all duplicates (sort makes duplicates adjacent)

uniq -c file.txt
# shows count of each line

uniq -d file.txt
# shows only lines that are duplicated

uniq -u file.txt
# shows only lines that appear once

uniq -i file.txt
# ignores case (A and a treated same)

uniq -f 1 file.txt
# skips first field (column) before comparing

uniq -s 3 file.txt
# skips first 3 characters before comparing

sort file.txt | uniq -c
# most common real-world usage (count frequency)

# IMPORTANT:
# uniq only works on consecutive duplicates
# always use sort before uniq if data is unsorted
