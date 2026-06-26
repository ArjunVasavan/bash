#!/usr/bin/env bash

# NOTE: Extended Globbing
# Extended globbing provides more powerful wildcard patterns.
# Enable it using:
# shopt -s extglob

# syntax:
# ?(pattern)          -> zero or one occurrence
# *(pattern)          -> zero or more occurrences
# +(pattern)          -> one or more occurrences
# @(pattern)          -> exactly one of the given patterns
# !(pattern)          -> anything except the given pattern

# Assume these files exist:
#
# foo.txt
# foofoo.txt
# bar.txt
# baz.txt
# test.c
# notes.md

echo ?(foo).txt
# matches:
# .txt
# foo.txt

echo *(foo).txt
# matches:
# .txt
# foo.txt
# foofoo.txt

echo +(foo).txt
# matches:
# foo.txt
# foofoo.txt

echo @(foo|bar).txt
# matches:
# foo.txt
# bar.txt

echo !(foo).txt
# matches:
# bar.txt
# baz.txt
# test.c
# notes.md
# (everything except foo.txt)

echo !(*.txt)
# matches:
# test.c
# notes.md
# (everything that is NOT a .txt file)

echo @(foo|bar|baz).txt
# matches:
# foo.txt
# bar.txt
# baz.txt

echo +([0-9]).txt
# matches:
# 1.txt
# 123.txt
# 4567.txt

echo !(*.c|*.h)
# matches everything except .c and .h files

# IMPORTANT:
# shopt -s extglob must be enabled
# patterns inside () are separated using '|'
# extended globbing is NOT regular expressions
# it is a shell filename matching feature
