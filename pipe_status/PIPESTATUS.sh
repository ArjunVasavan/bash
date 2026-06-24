#!/usr/bin/env bash

# NOTE: PIPESTATUS
# PIPESTATUS is a bash array that stores exit status of each command in a pipeline

# syntax:
# ${PIPESTATUS[index]}
# index starts from 0 (left to right in pipeline)

false | true

echo ${PIPESTATUS[0]}
# exit status of 'false' → 1

echo ${PIPESTATUS[1]}
# exit status of 'true' → 0

# normal $? only gives last command status

false | true
echo $?
# output: 0 (status of 'true' only)

# PIPESTATUS gives all

false | true
echo ${PIPESTATUS[@]}
# output: 1 0

# multiple commands

ls | grep "file" | wc -l
echo ${PIPESTATUS[@]}
# example output: 0 1 0
# ls success → 0
# grep failed (no match) → 1
# wc success → 0

# IMPORTANT:
# PIPESTATUS must be accessed immediately after pipeline
# running another command overwrites it

false | true
echo "test"
echo ${PIPESTATUS[@]}
# WRONG → PIPESTATUS is overwritten

false | true
echo ${PIPESTATUS[@]}
# CORRECT

# useful when debugging pipelines
# helps identify which command failed
