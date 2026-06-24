#!/usr/bin/env bash

# NOTE: bash -x
# bash -x is used for debugging shell scripts
# it prints each command before executing it

# -x -> enable execution tracing (shows commands as they run)
# -e -> exit immediately if any command fails
# -v -> print script lines as they are read

bash -x script.sh
# runs script with debugging enabled
# shows each command before execution

#!/usr/bin/env bash
set -x

echo "hello"
ls
# set -x inside script enables tracing from that point

set +x
# disables tracing

echo "done"
# commands after this will not be traced

bash -x script.sh > out.txt 2>&1
# redirect debug output + normal output to file

bash -x script.sh 2> debug.log
# store only debug info (stderr) in debug.log

# IMPORTANT:
# debug output goes to stderr (not stdout)
# useful for finding logic errors and execution flow
# shows expanded variables and actual commands being run
