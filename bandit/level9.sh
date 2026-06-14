#!/bin/sh
# Level Goal: The password for the next level is
# stored in the file data.txt in one of the few
# human-readable strings, preceded by several ‘=’
# characters.

strings data.txt | grep '=\{2,\}'

#################################################
# Useful things I learned

# The backslash (\) in the regular expression is
# required in order for the command to output
# correctly

# The strings command outputs the strings of
# of printable characters in files
