#!/usr/bin/env bash

# NOTE: nullglob, dotglob and globstar
# These shell options change how wildcard (*) expansion works.
# They affect globbing (filename expansion), not regular expressions.

# Enable options

shopt -s nullglob
shopt -s dotglob
shopt -s globstar

# ------------------------------------------------

# nullglob
# If a wildcard matches nothing, Bash expands it to nothing.

printf "%s\n" *.pdf

# Without nullglob:
# *.pdf

# With nullglob:
# (no output)

# Useful when looping over files.

for file in *.txt; do
    echo "$file"
done

# Without nullglob (no .txt files):
# *.txt

# With nullglob:
# loop executes zero times

# ------------------------------------------------

# dotglob
# Normally '*' ignores hidden files (files starting with '.')
# dotglob makes '*' include hidden files.

printf "%s\n" *

# Without dotglob:
# file1.txt
# main.c
# docs/

# With dotglob:
# .git
# .bashrc
# .config
# docs/
# file1.txt
# main.c

# ------------------------------------------------

# globstar
# '**' recursively searches subdirectories.

printf "%s\n" **/*.txt

# Example directory:

# .
# ├── notes.txt
# ├── docs
# │   ├── readme.txt
# │   └── tutorial.txt
# └── src
#     └── test
#         └── output.txt

# Output:

# notes.txt
# docs/readme.txt
# docs/tutorial.txt
# src/test/output.txt

# Without globstar:
# ** is treated like *

# ------------------------------------------------

# Using ./**

printf "%s\n" ./**/*.txt

# '.' means current directory
# '**' means search recursively
# '*.txt' means every .txt file

# Output:

# ./notes.txt
# ./docs/readme.txt
# ./docs/tutorial.txt
# ./src/test/output.txt

# ------------------------------------------------

# Hidden directories

printf "%s\n" ./**/*.txt

# With dotglob enabled:

# ./.config/config.txt
# ./.hidden/secret.txt
# ./docs/readme.txt

# Without dotglob:

# hidden directories are skipped

# ------------------------------------------------

# globstar as an alternative to find

printf "%s\n" **/*.c

# similar to:

find . -name "*.c"

printf "%s\n" **/*.txt

# similar to:

find . -name "*.txt"

printf "%s\n" **/*.jpg

# similar to:

find . -name "*.jpg"

# ------------------------------------------------

# When to use find instead

# find supports:
# - file size
# - permissions
# - modification time
# - owner
# - deleting files
# - executing commands

find . -name "*.txt" -exec wc -l {} \;

# This cannot be done using globstar alone.

# ------------------------------------------------

# Disable options

shopt -u nullglob
shopt -u dotglob
shopt -u globstar

# ------------------------------------------------

# SUMMARY

# nullglob
# *.txt
# no match -> nothing

# dotglob
# *
# includes hidden files

# globstar
# **/*.txt
# recursively finds every .txt file

# Together:

shopt -s nullglob dotglob globstar

printf "%s\n" ./**/*.txt

# This prints every .txt file recursively,
# including those inside hidden directories.
