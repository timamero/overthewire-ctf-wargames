#!/bin/sh
# Level Goal: There are 2 files in the
# homedirectory: passwords.old and passwords.new.
#The password for the next level is in
# passwords.new and is the only line that has
# been changed between passwords.old and
# passwords.new

diff -y --suppress-common-lines passwords.new passwords.old
# This will output the lines from each file that differ.
# The string in the left column is the password
