#!/usr/bin/env bash

# NOTE: bash -n
# bash -n is used to check syntax errors in a script WITHOUT executing it

# -n -> no execution (only syntax check)

bash -n script.sh
# checks for syntax errors
# does NOT run the script

#!/usr/bin/env bash

echo "hello"
if [ 1 -eq 1 ]
then
    echo "ok"
fi
# valid syntax → no output

#!/usr/bin/env bash

echo "hello"
if [ 1 -eq 1 ]
then
    echo "ok"
# missing 'fi'

bash -n script.sh
# shows syntax error (does not execute anything)

# IMPORTANT:
# bash -n only checks syntax, not logic errors
# script may pass -n but still fail during execution
# useful before running scripts to catch mistakes safely
