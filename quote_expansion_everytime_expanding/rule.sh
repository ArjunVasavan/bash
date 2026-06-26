#!/usr/bin/env bash

# NOTE: Always Quote Expansions
# Always put double quotes around variable, array, and command expansions.
# This prevents:
# - word splitting
# - pathname expansion (globbing)

# Variable Expansion

name="Arjun Vasavan"

echo "$name"
# output:
# Arjun Vasavan

echo $name
# output:
# Arjun
# Vasavan
# (split into two arguments)

# File Names

file="my file.txt"

cat "$file"
# correct

cat $file
# WRONG
# treated as:
# cat my file.txt

# Command Substitution

echo "$(pwd)"
# correct

echo $(pwd)
# usually works, but quoting is safer

# Array Expansion

arr=("hello world" "linux" "bash")

printf "%s\n" "${arr[@]}"
# output:
# hello world
# linux
# bash
# each element remains separate

printf "%s\n" ${arr[@]}
# output:
# hello
# world
# linux
# bash
# "hello world" is split into two arguments

printf "%s\n" "${arr[*]}"
# output:
# hello world linux bash
# all elements become ONE string

printf "%s\n" ${arr[*]}
# output:
# hello
# world
# linux
# bash
# behaves like ${arr[@]} without quotes

# Changing IFS

IFS=,

echo "${arr[*]}"
# output:
# hello world,linux,bash
# elements joined using ','

echo ${arr[*]}
# output:
# hello
# world
# linux
# bash
# quotes are missing, so joining is lost

# Parameter Expansion

arr=("foo" "bar" "baz")

printf "%s\n" "${arr[@]//a/o}"
# output:
# foo
# bor
# boz

printf "%s\n" "${arr[@]#b}"
# output:
# foo
# ar
# az

printf "%s\n" "${arr[@]%r}"
# output:
# foo
# ba
# baz

# IMPORTANT:
# "$var"        -> preserve spaces
# "${var}"      -> preserve spaces
# "${arr[@]}"   -> each array element is a separate argument (RECOMMENDED)
# "${arr[*]}"   -> all array elements become one string
# "$(command)"  -> quote command substitution

# Avoid:
# $var
# ${arr[@]}
# ${arr[*]}
# $(command)

# unless you intentionally want word splitting or glob expansion.
