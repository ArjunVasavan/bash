#!/usr/bin/env bash

# NOTE: Process Substitution <(...)
# we use <(command) and give it to done here in while loop
# thus i value will be same and subshell variation wont happen here
# here <() -> Process is calling and it happens on current shell not on subshell

i=0

while read -r word; do
  ((i++))
done < <(grep a /home/arjun/system_learning/bash/readme.md)   # this whole things turns into an file 

echo "found $i words using code"
