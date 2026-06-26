#!/usr/bin/env bash

# NOTE: Globbing (Filename Expansion)
# Globbing is performed by the shell BEFORE executing a command.
# Wildcards are expanded into matching filenames.

# Common Wildcards

# *        -> matches zero or more characters
# ?        -> matches exactly one character
# [abc]    -> matches a, b, or c
# [a-z]    -> matches any lowercase letter
# [A-Z]    -> matches any uppercase letter
# [0-9]    -> matches any digit
# [!abc]   -> matches any character except a, b, or c
# [!0-9]   -> matches any non-digit

# Example directory

ls files/

# files/
# bar.jpg
# bar.txt
# baz.jpg
# baz.txt
# foo.jpg
# foo.txt

# -----------------------------------------

echo files/*
# output:
# files/bar.jpg files/bar.txt files/baz.jpg files/baz.txt files/foo.jpg files/foo.txt
# '*' matches every file

printf "%s\n" files/*
# output:
# files/bar.jpg
# files/bar.txt
# files/baz.jpg
# files/baz.txt
# files/foo.jpg
# files/foo.txt

# ls -1

ls -1 files/
# '-1' (number one)
# prints one file per line

# -----------------------------------------

echo files/*.txt
# output:
# files/bar.txt files/baz.txt files/foo.txt
# '*' matches anything before ".txt"

echo files/*.jpg
# output:
# files/bar.jpg files/baz.jpg files/foo.jpg

# -----------------------------------------

echo files/f??.txt
# output:
# files/foo.txt
# '?' matches exactly one character

echo files/ba?.txt
# output:
# files/bar.txt files/baz.txt

# -----------------------------------------

echo files/[bf]*
# output:
# files/bar.jpg files/bar.txt files/baz.jpg files/baz.txt files/foo.jpg files/foo.txt
# first character must be 'b' or 'f'

echo files/[ab]*.txt
# output:
# files/bar.txt files/baz.txt
# filename starts with 'a' or 'b'

echo files/[a-z]*.txt
# output:
# files/bar.txt files/baz.txt files/foo.txt
# starts with any lowercase letter

echo files/[!b]*
# output:
# files/foo.jpg files/foo.txt
# does NOT start with 'b'

echo files/*.[jt][xp][gt]
# output:
# files/bar.jpg files/bar.txt
# files/baz.jpg files/baz.txt
# files/foo.jpg files/foo.txt
# matches jpg and txt extensions

# -----------------------------------------

echo *
# list all files/directories in current directory

echo .
# current directory

echo ..
# parent directory

# -----------------------------------------

# IMPORTANT:
# globbing happens BEFORE the command executes
#
# shell:
# echo files/*.txt
#
# becomes:
# echo files/bar.txt files/baz.txt files/foo.txt
#
# then echo executes

# If no files match:
#
# echo *.pdf
#
# output:
# *.pdf
# (unless 'nullglob' is enabled)

# SUMMARY:
#
# *        -> zero or more characters
# ?        -> exactly one character
# [abc]    -> one character from a, b, c
# [a-z]    -> one lowercase letter
# [0-9]    -> one digit
# [!abc]   -> anything except a, b, c
# *.txt    -> all .txt files
# file?.c  -> file1.c fileA.c
# file*    -> file, file1, file.txt
