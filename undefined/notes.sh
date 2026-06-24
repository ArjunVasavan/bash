#!/usr/bin/env bash

# NOTE: bash -u (unbound variable) + environment variable behavior
# this explains how variables behave with export and inline assignment

# set -u (or bash -u)
# → throws error if a variable is used but not defined

# EXAMPLE ERROR:
# baz: unbound variable
# happens when baz is not set and script tries to use it

# ----------------------------------------
# CASE 1: inline variable assignment
# ----------------------------------------

baz=haha ./script
# sets baz ONLY for this command (temporary environment variable)
# passed to child process (script)

# works even without export
# highest priority

# ----------------------------------------
# CASE 2: exported variable
# ----------------------------------------

export baz=woo
./script
# script uses baz=woo (comes from environment)

# ----------------------------------------
# CASE 3: inline overrides export
# ----------------------------------------

export baz=woo
baz=haha ./script
# inline assignment overrides exported value
# script sees baz=haha

# ----------------------------------------
# CASE 4: no variable defined
# ----------------------------------------

./script
# if script uses baz and set -u is enabled → ERROR
# "unbound variable"

# ----------------------------------------
# IMPORTANT DIFFERENCE
# ----------------------------------------

baz=haha ./script
# temporary, only for that command

baz=haha
./script
# does NOT pass to script unless exported

export baz
./script
# now it works

# ----------------------------------------
# PRIORITY ORDER
# ----------------------------------------

# 1. inline assignment  (baz=val cmd)   → highest
# 2. exported variable (export baz=val)
# 3. undefined → error (with set -u)

# ----------------------------------------
# INTERNAL WORKING
# ----------------------------------------

# each process has its own environment (key-value pairs)
# export → puts variable into environment
# when a process creates a child → environment is copied

# inline assignment:
# VAR=value command
# → creates temporary env variable only for that process

# ----------------------------------------
# SUMMARY
# ----------------------------------------

# bash variable (no export) → only current shell
# exported variable         → available to child processes
# inline assignment         → temporary override for one command
# set -u                    → error if variable is not defined
