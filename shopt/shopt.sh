#!/usr/bin/env bash

# NOTE: shopt (Shell Options)
# shopt is used to enable or disable optional Bash features.

# syntax:
# shopt            -> list all options
# shopt option     -> show status of an option
# shopt -s option  -> enable an option
# shopt -u option  -> disable an option

shopt -s nullglob
# if no files match a wildcard, return nothing

echo *.pdf
# output:
# (nothing)

shopt -u nullglob

shopt -s dotglob
# '*' also matches hidden files

echo *
# output includes:
# .git
# .bashrc

shopt -u dotglob

shopt -s globstar
# '**' searches directories recursively

echo **/*.txt
# finds all .txt files recursively

shopt -u globstar

shopt extglob   # to check if its on or off 

# IMPORTANT:
# shopt -s -> enable an option
# shopt -u -> disable an option
# changes affect only the current shell
