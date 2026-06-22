#!/usr/bin/env bash

array=(arjun vasavan)

declare -p array  # prints -> declare -a array=([0]="arjun" [1]="vasavan")

echo "length of array is : ${#array[@]}" 

# NOTE: # -> pound sign for length for array

echo "length of string ${array[0]} is ${#array[0]}"
