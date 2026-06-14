#!/bin/sh
# Level Goal: The password for the next level is
# stored in the only human-readable file in the
# inhere directory. Tip: if your terminal is
# messed up, try the “reset” command.

cd inhere || exit
find . -type f -exec file -e encoding '{}' \; # Find files of type regular file (f), then run file on every file
# This will output the following:
# ./-file01: data
# ./-file02: data
# ./-file08: data
# ./-file06: data
# ./-file00: data
# ./-file04: data
# ./-file05: data
# ./-file07: ASCII text
# ./-file03: data
# ./-file09: data

# ./-file07 is the only human-readable file

cat ./-file07

#################################################
# To output just the one file:
# find . -type f -exec file -e encoding '{}' \; | grep ASCII

#################################################
# Another way to output the human-readable file is:
#  find inhere/ -type f -exec file -i '{}' \; | grep text
