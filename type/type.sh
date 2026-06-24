#!/usr/bin/env bash

# NOTE: type
# type is used to find how a command is interpreted by the shell

# it tells whether a command is:
# - builtin
# - alias
# - function
# - external binary (file path)

type ls
# output: ls is /bin/ls
# → external command

type cd
# output: cd is a shell builtin
# → built into shell

type echo
# output: echo is a shell builtin (or sometimes /bin/echo)
# → depends on shell

type ll
# output: ll is aliased to 'ls -l'
# → alias

# show all matches (if multiple exist)
type -a ls
# shows all locations (alias, builtin, binaries)

# check only type without path
type -t ls
# output: file (external command)

type -t cd
# output: builtin

type -t ll
# output: alias

# resolve full path of command
type -p ls
# prints path only (/bin/ls)

# IMPORTANT:
# type helps debug which command is actually running
# useful when aliases or multiple binaries exist
# shell checks in order: alias → function → builtin → PATH
