#!/bin/sh
# Level Goal: The password for the next level is
# stored somewhere on the server and has all of
# the following properties:
#   owned by user bandit7
#   owned by group bandit6
#   33 bytes in size

cat "$(find / -type f -size 33c -user bandit7 -group bandit6 2>/dev/null)"

#################################################
# Useful things I learned

# To prevent showing the output of files and
# directories with "Permission denied",
# you can use 2>/dev/null, which is a special file

# To cat the output of the find command, wrap the
# command in $(). This notation is preferred over
# backticks.
