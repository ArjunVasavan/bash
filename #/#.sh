#!/usr/bin/env bash

# ─────────────────────────────────────────────
# 1. COMMENTS
# ─────────────────────────────────────────────

# this is a comment, bash ignores everything after #
echo "this runs"                                    # this is also a comment, bash ignores this
# echo "this does not run, whole line is comment"

# ─────────────────────────────────────────────
# 2. STRING LENGTH
# ─────────────────────────────────────────────

name='arjun vasavan'

echo "length of name: ${#name}"                    # 14 (counts every character including space)

# works on any variable
number='12345'
echo "length of number: ${#number}"                # 5

# ─────────────────────────────────────────────
# 3. NUMBER OF ARGUMENTS
# ─────────────────────────────────────────────

# when you run: bash script.sh arjun 25 developer
echo "total arguments passed: $#"                  # 3

# checking if correct number of arguments were passed
if [ "$#" -eq 0 ]; then
    echo "no arguments passed"
elif [ "$#" -lt 3 ]; then
    echo "too few arguments, need 3 got $#"
elif [ "$#" -gt 3 ]; then
    echo "too many arguments, need 3 got $#"
else
    echo "correct number of arguments passed: $#"
fi

# ─────────────────────────────────────────────
# 4. ARRAY LENGTH
# ─────────────────────────────────────────────

fruits=('apple' 'banana' 'mango' 'grape')

echo "total items in array: ${#fruits[@]}"         # 4
echo "length of first item: ${#fruits[0]}"         # 5 (length of 'apple')
echo "length of second item: ${#fruits[1]}"        # 6 (length of 'banana')

# ─────────────────────────────────────────────
# 5. STRING DELETION USING # AND ##
# ─────────────────────────────────────────────

file='arjun.vasavan.txt'

# single # deletes shortest match from left side
echo "delete shortest from left: ${file#*.}"       # vasavan.txt (removes arjun.)

# double ## deletes longest match from left side
echo "delete longest from left: ${file##*.}"       # txt (removes arjun.vasavan.)

# ─────────────────────────────────────────────
# 6. SHEBANG LINE
# ─────────────────────────────────────────────

# #!/usr/bin/env bash at top of script is called shebang
# # here is not a comment, it is a special instruction
# it tells the system which program to use to run this script
# without it system does not know to use bash
