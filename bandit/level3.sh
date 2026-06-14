#!/bin/sh
# Level Goal: The password for the next level is
# stored in a hidden file in the inhere directory.

ls -a inhere # The -a option allows you to see hidden files
cat inhere/.hidden
