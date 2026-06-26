#!/usr/bin/env bash

# NOTE: / (String Replacement Operator)
# '/' is used to replace text inside a variable

# syntax:
# ${variable/pattern/replacement}

name="Arjun Vasavan"
echo "${name/Arjun/Abhimanyu}"
# output: Abhimanyu Vasavan
# replaces first occurrence only

text="apple apple apple"
echo "${text/apple/orange}"
# output: orange apple apple
# only first match is replaced

text="apple apple apple"
echo "${text//apple/orange}"
# output: orange orange orange
# '//' replaces ALL occurrences

path="/home/arjun/project"
echo "${path/home/usr}"
# output: /usr/arjun/project

file="main.c"
echo "${file/.c/.cpp}"
# output: main.cpp

# remove first occurrence

text="hello world hello"
echo "${text/hello/}"
# output:  world hello

# remove all occurrences

text="hello world hello"
echo "${text//hello/}"
# output:  world 

# IMPORTANT:
# '/'  -> replace first occurrence
# '//' -> replace all occurrences
# original variable is NOT modified
# only the expanded result is changed
