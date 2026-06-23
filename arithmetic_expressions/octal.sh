#!/usr/bin/env bash

a=0006  # treated as octal 

echo "$a"  # prints 0006 

echo $((a))  # prints 6 

a=08  # this  octal and octal cant be 8
echo"$a"
echo $((10#$a))  # for printing 8 use 10# -> conveting to decimal base


a=010  # this  octal is  8
echo"$a"

