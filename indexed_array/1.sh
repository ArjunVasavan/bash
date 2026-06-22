#!/usr/bin/env bash

array=(foo bar baz)
echo "Normal expansion: $array"  # you get first element of array only 

echo "0: ${array[0]}"  # using indexed expansion 
echo "1: ${array[1]}"  # using indexed expansion 
echo "2: ${array[2]}"  # using indexed expansion 

echo "3: ${array[3]}"  # you get empty string here 


echo "-1: ${array[-1]}"  # gets last element, that means you can index backwards

idx=2

echo "idx: ${array[idx]}"  # both work same 
echo "'$'idx: ${array[$idx]}" # both work same 

echo "*: ${array[*]}"
echo "@: ${array[@]}"
