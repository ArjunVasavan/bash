#!/usr/bin/env bash

# NOTE: Brace Expansion
# Brace expansion generates multiple strings.
# It happens BEFORE variable expansion and filename globbing.

# syntax:
# {item1,item2,item3}

echo {foo,bar,baz}

# output:
# foo bar baz

# ----------------------------------------

echo file.{txt,jpg,png}

# output:
# file.txt file.jpg file.png

# ----------------------------------------

echo {1..5}

# output:
# 1 2 3 4 5

echo {a..e}

# output:
# a b c d e

echo {01..05}

# output:
# 01 02 03 04 05

# ----------------------------------------

echo {foo,bar}.{txt,jpg}

# output:
# foo.txt
# foo.jpg
# bar.txt
# bar.jpg

# every combination is generated

# ----------------------------------------

filename="my_file"

echo "$filename".{jpg,txt,md,}

# output:
# my_file.jpg
# my_file.txt
# my_file.md
# my_file

# empty element ('') produces filename without extension

# ----------------------------------------

# Creating an array using brace expansion

arr=("$filename".{jpg,txt,md,})

printf "%s\n" "${arr[@]}"

# output:
# my_file.jpg
# my_file.txt
# my_file.md
# my_file

# ----------------------------------------

# What if braces are quoted?

echo "{foo,bar,baz}"

# output:
# {foo,bar,baz}

# no brace expansion occurs

echo "$filename.{jpg,txt}"

# output:
# my_file.{jpg,txt}

# brace expansion does NOT happen because braces are inside quotes

# ----------------------------------------

# Variable inside braces

ext="txt"

echo file.{$ext,jpg}

# output:
# file.txt file.jpg

# after brace expansion, variables are expanded

# ----------------------------------------

# IMPORTANT:

# Brace expansion happens BEFORE:
# - variable expansion
# - command substitution
# - arithmetic expansion
# - filename globbing

# Braces must NOT be quoted.

# GOOD:
echo file.{txt,jpg}

# BAD:
echo "file.{txt,jpg}"

# ----------------------------------------

# Common real-world examples

mkdir -p project/{src,include,bin,docs}

touch {main,test}.c

cp image.{jpg,png} backup/

arr=({1..10})

printf "%s\n" "${arr[@]}"
