#!/usr/bin/env bash

# NOTE: Array Expansion
# Bash arrays can be expanded using @ or *.
# Quotes make a BIG difference.

arr=("hello world" "linux" "bash")

# "${arr[@]}"
# each array element is expanded as a separate argument
# spaces inside elements are preserved

printf "%s\n" "${arr[@]}"

# output:
# hello world
# linux
# bash

# ${arr[@]}
# each element is expanded separately
# BUT word splitting occurs

printf "%s\n" ${arr[@]}

# output:
# hello
# world
# linux
# bash

# "${arr[*]}"
# entire array becomes ONE string
# elements are joined using first character of IFS

printf "%s\n" "${arr[*]}"

# output:
# hello world linux bash

# ${arr[*]}
# behaves similar to ${arr[@]} without quotes
# word splitting occurs

printf "%s\n" ${arr[*]}

# output:
# hello
# world
# linux
# bash

# Changing IFS

IFS=,

echo "${arr[*]}"

# output:
# hello world,linux,bash

# Parameter expansion works on EVERY array element

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

printf "%s\n" "${arr[@]##b}"

# output:
# foo
# ar
# az

printf "%s\n" "${arr[@]%r}"

# output:
# foo
# ba
# baz

printf "%s\n" "${arr[@]%%z}"

# output:
# foo
# bar
# ba

# Array slicing

printf "%s\n" "${arr[@]:1}"

# output:
# bar
# baz

printf "%s\n" "${arr[@]:0:2}"

# output:
# foo
# bar

# IMPORTANT:
# "${arr[@]}" -> each element remains separate (RECOMMENDED)
# "${arr[*]}" -> one single string
# ${arr[@]}   -> word splitting occurs
# ${arr[*]}   -> word splitting occurs
# Always quote array expansions unless you intentionally
# want Bash to split elements.
