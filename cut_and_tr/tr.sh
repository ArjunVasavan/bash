#!/usr/bin/env bash

# NOTE: tr (translate)
# tr is used to replace or delete characters from input

# - first argument  -> characters to replace
# - second argument -> replacement characters

echo "a,b,c" | tr ',' '\t'
# replaces ',' with tab (\t)

# same with file
cat file.csv | tr ',' '\t'
# converts comma-separated values into tab-separated values

# convert uppercase to lowercase
echo "HELLO" | tr 'A-Z' 'a-z'

# convert lowercase to uppercase
echo "hello" | tr 'a-z' 'A-Z'

# delete characters
echo "hello123" | tr -d '0-9'
# removes all digits

# squeeze repeated characters
echo "heeellooo" | tr -s 'eol'
# compress repeated 'e', 'o', 'l' into single occurrence

# IMPORTANT:
# tr works on characters, NOT words or strings

# WRONG:
# tr "hello" "bye"   #  not valid usage

# CORRECT:
# tr 'a-z' 'A-Z'     # works character by character
