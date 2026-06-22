#!/usr/bin/env bash

# NOTE: associative array is like an hashmap -> key : value 
# use -A to make an associative array declare -A arr



if ! declare -A  arr; then
  echo "Uh oh... my bash doesnt support associative array" >&2
  exit 1
fi

arr[foo]=1
arr[arjun]=2
arr[vasavan]=3
arr[hello]=4
arr[bar]=5

echo "${arr[foo]}"
echo "${arr[bar]}"
echo "${arr[arjun]}"
echo "${arr[vasavan]}"
echo "${arr[fake_he_he]}"  # you get empty string here 


