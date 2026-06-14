#!/bin/sh
# Level Goal: The password for the next level is
# stored in a file readme in the homedirectory.
# Unfortunately, someone has modified .bashrc to
# log you out when you log in with SSH.

# When logging in with password, connection is immediately closed
# This was expected because of the intstruction in the previous level

# Log in with the following command to display the content of readme
ssh bandit18@bandit.labs.overthewire.org -p 2220 -t 'cat readme'

#################################################
# Useful things I learned
# The '-t' option in 'ssh' forces the allocation of a pseudo
# terminal on the remote hose. You can execute an interactive
# command and receive their output correctly on your local machine
