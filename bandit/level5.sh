#!/bin/sh
# Level Goal: The password for the next level is
# stored in a file somewhere under the inhere
# directory and has all of the following
# properties:
#   human-readable
#   1033 bytes in size
#   not executable

find inhere/ -not -executable -size 1033c -exec cat '{}' \;
