#!/usr/bin/env bash

array=(foo bar baz)

echo "array is with default IFS: ${array[*]}"  # * stringifies it... 
# but what variable is reson for stringifieng it? 
# it uses IFS

# NOTE: IFS 
# IFS is by default set to space , newline and tab
# * stringifies by using the first character in IFS
# if you modified IFS, you can use 'unset IFS' command to restore old default IFS


IFS=hello
echo "array is with hello as IFS: ${array[*]}"    # here first character of IFS is "h" so array will be stringified by 'h'
# NOTE: Note that for IFS to work you have to use * notation on array 


IFS=,
echo "array with IFS as ',' is : ${array[*]}"
echo "array with IFS as ',' is keys using ! : ${!array[*]}"
