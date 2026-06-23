#!/usr/bin/env bash

# NOTE: sed (stream editor)
# sed is used to search, replace, delete and modify text from input (file or pipe)
# it works line by line (stream processing), not on the whole file at once

# -n -> disables automatic printing (only prints what you explicitly tell)
# -i -> edits the file directly (permanent change)
# s  -> substitute (replace text)
# g  -> replace all matches in a line (not just first)
# p  -> print (used with -n)
# d  -> delete matching lines
# i  -> insert before
# a  -> append after

echo "hello world" | sed 's/world/linux/'
# replaces first match of "world" with "linux"

echo "one one one" | sed 's/one/two/g'
# 'g' replaces all matches in the line

sed 's/foo/bar/g' file.txt
# replaces all "foo" with "bar"

sed '2s/foo/bar/' file.txt
# apply replacement only on line 2

sed '/error/d' file.txt
# delete lines matching "error" (regex pattern)

sed -n '/error/p' file.txt
# print only lines matching "error"

sed '2d' file.txt
# delete line 2

sed '2i NEW_LINE' file.txt
# insert before line 2

sed '2a NEW_LINE' file.txt
# append after line 2

sed 's|/home/user|/tmp|g' file.txt
# change delimiter to avoid escaping '/'

sed -i 's/foo/bar/g' file.txt
# modify file directly

# REGEX (pattern matching)

sed 's/[0-9]/X/g' file.txt
# replace all digits with X

sed 's/[a-z]/_/g' file.txt
# replace all lowercase letters with '_'

sed '/^error/d' file.txt
# delete lines starting with "error" (^ = start of line)

sed '/error$/d' file.txt
# delete lines ending with "error" ($ = end of line)

sed '/^$/d' file.txt
# delete empty lines

# RANGE (a..d style addressing)

sed '2,5d' file.txt
# delete lines from 2 to 5

sed '3,7s/foo/bar/g' file.txt
# apply replacement only from line 3 to 7

sed '/start/,/end/d' file.txt
# delete everything from line matching "start" to line matching "end"

# IMPORTANT:
# sed uses basic regex by default
# patterns inside / / are regular expressions
# without -n, sed prints every line after applying changes
