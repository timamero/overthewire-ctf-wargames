#!/bin/sh
# Level Goal: The password for the next level is
# stored in the file data.txt and is the only
# line of text that occurs only once

sort data.txt | uniq -u

#################################################
# Useful things I learned

# uniq command only detects repeated lines if they
# are adjacent

# -u only prints unique lines
