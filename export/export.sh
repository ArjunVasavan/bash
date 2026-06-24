#!/usr/bin/env bash

# NOTE: export
# export is used to make shell variables available to child processes (environment variables)

# no flags commonly used with export
# export VAR=value -> define and export variable
# export VAR       -> export existing variable

name="arjun"
# normal variable (only available in current shell)

export name
# now 'name' is available to child processes

export city="bangalore"
# define + export in one step

bash -c 'echo $city'
# child shell can access exported variable

echo $city
# works in current shell

unset city
# removes variable

echo $city
# empty (variable removed)

# IMPORTANT:
# without export → variable is local to current shell only
# with export → available to subprocesses (child shells, programs)
# export is required when passing variables to scripts/programs

# EXAMPLE:

VAR=10
bash -c 'echo $VAR'
# no output (not exported)

export VAR=10
bash -c 'echo $VAR'
# output: 10 (available in child process)
