#!/usr/bin/env bash

# NOTE: finger
# finger is used to display information about system users
# it can show login name, real name, home directory, shell, login time, idle time, and more
# not installed by default on many Linux distributions

# basic usage

finger
# display information about all logged-in users

finger username
# display information about a specific user

finger root
# display information about the root user

# remote query (if finger service is enabled)

finger username@hostname
# query user information from a remote system

finger @hostname
# display users logged into a remote system

# IMPORTANT:
# information shown may include:
# - login name
# - full name
# - home directory
# - login shell
# - last login time
# - idle time
# - office/phone (if configured)
# - .plan and .project file contents

# .plan
# if ~/.plan exists, finger displays its contents

# .project
# if ~/.project exists, finger displays its contents

# installation (Ubuntu/Debian)

sudo apt install finger

# IMPORTANT:
# many modern Linux systems disable or do not install finger
# because exposing user information can be a security/privacy risk
# mostly used on older Unix systems or for learning Unix commands
