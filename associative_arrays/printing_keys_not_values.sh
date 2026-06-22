#!/usr/bin/env bash


declare -A  arr   

arr[foo]=1
arr[arjun]=2
arr[vasavan]=3
arr[hello]=4
arr[bar]=5

  # NOTE: ! -> in array is used for showing keys

echo "${!arr[*]}"  # you need to use * for stringify it 
echo "${arr[*]}"

echo "---"

for key in "${!arr[@]}"; do
  value=${arr[$key]}
  echo "got -> $key : $value"
done

