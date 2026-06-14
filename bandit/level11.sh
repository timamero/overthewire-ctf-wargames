#!/bin/sh
# Level Goal: The password for the next level is
# stored in the file data.txt, where all
# lowercase (a-z) and uppercase (A-Z) letters
# have been rotated by 13 positions

tr 'A-Za-z' 'N-ZA-Mn-za-m' <data.txt

#################################################
# Useful reference

# https://en.wikipedia.org/wiki/ROT13
