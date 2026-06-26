#!/usr/bin/env bash

# ─────────────────────────────────────────────
# 1. BASIC VARIABLE ACCESS
# ─────────────────────────────────────────────

name='arjun'

echo "plain text, no dollar: name"                  # name
echo "with dollar, reads variable: $name"           # arjun
echo "with curly braces, safer: ${name}"            # arjun

# why curly braces? without them bash gets confused
echo "without curly: $name_junior"                  # empty, bash looks for variable 'name_junior'
echo "with curly: ${name}_junior"                   # arjun_junior, bash knows variable is 'name'

# ─────────────────────────────────────────────
# 2. ARGUMENTS PASSED TO SCRIPT
# ─────────────────────────────────────────────

# when you run: bash script.sh arjun 25 developer
echo "first argument: $1"                           # arjun
echo "second argument: $2"                          # 25
echo "third argument: $3"                           # developer
echo "all arguments: $@"                            # arjun 25 developer
echo "all arguments as one string: $*"              # arjun 25 developer
echo "total number of arguments: $#"               # 3

# ─────────────────────────────────────────────
# 3. SPECIAL BUILT IN VARIABLES
# ─────────────────────────────────────────────

echo "name of this script: $0"                      # ./script.sh
echo "process id of this script: $$"               # 12345 (changes every run)
echo "last command exit status: $?"                 # 0 means success, anything else is failure
echo "id of last background process: $!"           # 9876 (pid of last & process)

# ─────────────────────────────────────────────
# 4. COMMAND SUBSTITUTION
# ─────────────────────────────────────────────

# $() runs a command and gives back its output
echo "current directory: $(pwd)"                    # /home/arjun
echo "todays date: $(date)"                         # Mon Jan 1 00:00:00 2024
echo "who is logged in: $(whoami)"                  # arjun

# ─────────────────────────────────────────────
# 5. ARITHMETIC
# ─────────────────────────────────────────────

# $(()) is used to do math
echo "without dollar: 2+2"                          # 2+2 (plain text)
echo "with dollar: $((2+2))"                        # 4
echo "using variable in math: $((${#name}*2))"      # 10 (length of arjun is 5, 5*2=10)

a=10
b=3
echo "addition: $((a+b))"                           # 13
echo "subtraction: $((a-b))"                        # 7
echo "multiplication: $((a*b))"                     # 30
echo "division: $((a/b))"                           # 3 (bash only does integers)
echo "remainder: $((a%b))"                          # 1
