#!/usr/bin/env bash

# NOTE: sudo (superuser do)
# sudo allows a permitted user to execute a command as another user (default: root)

# basic usage
sudo command
# runs command with root privileges

sudo apt update
# run package update as root

# run as specific user
sudo -u username command
# executes command as another user

sudo -u nobody whoami
# output: nobody

# run shell as root
sudo -i
# login shell as root (loads root environment)

sudo -s
# root shell but keeps current environment

# edit files safely
sudoedit file.txt
# opens file in editor with proper permissions

# check permissions
sudo -l
# shows what commands you are allowed to run

# IMPORTANT:
# sudo uses /etc/sudoers file for permissions
# access is controlled per user/group
# sudo asks for YOUR password (not root password)

# caching:
sudo ls
# after first use, password is cached for some time (~15 min)

# reset cache
sudo -k
# next sudo will ask password again

# ALWAYS BE CAREFUL:
# running commands with sudo can modify system files
# wrong command can break system
