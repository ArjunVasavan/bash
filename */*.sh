#!/usr/bin/env bash

# ─────────────────────────────────────────────
# 1. WILDCARD IN FILES
# ─────────────────────────────────────────────

# * matches anything, any number of characters
echo "all files in current directory: $(ls *)"      # lists every file
echo "all .txt files: $(ls *.txt)"                  # only .txt files
echo "all files starting with a: $(ls a*)"          # files starting with a
echo "all files ending with a: $(ls *a)"            # files ending with a
echo "all files with arjun in name: $(ls *arjun*)"  # files containing arjun anywhere

# ─────────────────────────────────────────────
# 2. IN ARGUMENTS
# ─────────────────────────────────────────────

# when you run: bash script.sh arjun 25 developer
echo "all arguments separate: $@"                   # arjun 25 developer (each is its own)
echo "all arguments as one string: $*"              # arjun 25 developer (all as one)

# difference between $@ and $* matters inside quotes
# "$@" -> "arjun" "25" "developer"   (3 separate strings)
# "$*" -> "arjun 25 developer"       (1 single string)

# ─────────────────────────────────────────────
# 3. IN ARITHMETIC
# ─────────────────────────────────────────────

a=10
b=3

echo "multiplication: $((a*b))"                     # 30
echo "power of: $((a**b))"                          # 1000 (10 to the power of 3)

# ─────────────────────────────────────────────
# 4. IN PATTERNS AND STRING MATCHING
# ─────────────────────────────────────────────

name='arjun vasavan'

# * in case statements matches anything
case $name in
  arjun*)   echo "name starts with arjun: $name"  ;; # matches
  *vasavan) echo "name ends with vasavan: $name"   ;; # matches if above fails
  *jun*)    echo "name contains jun: $name"        ;; # matches if above fail
  *)        echo "no match found: $name"           ;; # catches everything else
esac

# ─────────────────────────────────────────────
# 5. IN STRING DELETION
# ─────────────────────────────────────────────

file='arjun.vasavan.txt'

echo "original: ${file}"                            # arjun.vasavan.txt
echo "delete shortest from left: ${file#*.}"        # vasavan.txt   (removes up to first dot)
echo "delete longest from left: ${file##*.}"        # txt           (removes up to last dot)
echo "delete shortest from right: ${file%.*}"       # arjun.vasavan (removes from last dot)
echo "delete longest from right: ${file%%.*}"       # arjun         (removes from first dot)
