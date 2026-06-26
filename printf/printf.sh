#!/usr/bin/env bash

# NOTE: printf
# printf prints formatted output
# unlike echo, it does NOT automatically print a newline

# syntax:
# printf "format" arguments...

printf "Hello"
# output: Hello

printf "Hello\n"
# output:
# Hello

# %s -> string
# %d -> integer (decimal)
# %f -> floating-point number
# %x -> hexadecimal
# %o -> octal
# %c -> character
# %% -> print a literal '%'
# \n -> newline
# \t -> tab

printf "%s\n" "Arjun"
# output:
# Arjun

printf "%s\n" "foo" "bar" "baz"
# output:
# foo
# bar
# baz

# Arrays

arr=("foo" "bar" "baz")

printf "%s\n" "${arr[@]}"
# output:
# foo
# bar
# baz

printf "%s\n" "${arr[@]:1}"
# output:
# bar
# baz

printf "%s\n" "${arr[@]:2}"
# output:
# baz

printf "%s\n" "${arr[@]:0:2}"
# output:
# foo
# bar

# Parameter expansion on arrays

printf "%s\n" "${arr[@]/a/o}"
# replace first occurrence of 'a' in each element
# output:
# foo
# bor
# boz

printf "%s\n" "${arr[@]//a/o}"
# replace all occurrences of 'a' in each element
# output:
# foo
# bor
# boz

printf "%s\n" "${arr[@]#b}"
# remove shortest prefix 'b' from each element
# output:
# foo
# ar
# az

printf "%s\n" "${arr[@]##b}"
# remove longest prefix 'b' from each element
# output:
# foo
# ar
# az

printf "%s\n" "${arr[@]%r}"
# remove shortest suffix 'r' from each element
# output:
# foo
# ba
# baz

printf "%s\n" "${arr[@]%%z}"
# remove longest suffix 'z' from each element
# output:
# foo
# bar
# ba

# Numbers

printf "%d\n" 100
# output:
# 100

printf "%f\n" 3.141592
# output:
# 3.141592

printf "%.2f\n" 3.141592
# output:
# 3.14

printf "%x\n" 255
# output:
# ff

printf "%o\n" 10
# output:
# 12

printf "%c\n" 65
# output:
# A

printf "100%% Complete\n"
# output:
# 100% Complete

# Width formatting

printf "%5d\n" 42
# right aligned

printf "%-5d\n" 42
# left aligned

printf "%05d\n" 42
# padded with zeros

# Multiple format specifiers

printf "%s is %d years old\n" "Arjun" 22
# output:
# Arjun is 22 years old

# IMPORTANT:
# "${arr[@]}" expands each array element separately.
# Parameter expansions (/, //, #, ##, %, %%) are applied to EACH array element.
# printf does NOT automatically append a newline.
# Always use '\n' when you want output on the next line.
