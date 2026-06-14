#!/bin/sh
# Level Goal: After all this git stuff, it’s time for another escape. Good luck!
# Commands you may need to solve this level: sh, man

# -> WELCOME TO THE UPPERCASE SHELL

#  Prompts begin with `>>`

ls
# -> sh: 1: LS: Permission denied

# Everything typed into the shell is transformed to uppercase
# Variables starting with $ can be used
# The variable $0 holds the name of the shell. Entering $0 will break
# out of the uppercase shell
$0

# Display the password for bandit23
cat /etc/bandit_pass/bandit33
# -> [bandit33 password]


# Look up solutions
# https://mayadevbe.me/posts/overthewire/bandit/level33/
# Study this solution

# Primary reference:
# https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Positional-Parameters
# https://linuxhandbook.com/bash-dollar-0/