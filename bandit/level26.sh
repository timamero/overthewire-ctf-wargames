#!/bin/sh
# Level Goal: Good job getting a shell! Now hurry and grab the password
# for bandit27!

# Commands you may need to solve this level: ls


# Minimize the window to the smallest height before running the next
# command
ssh bandit26@bandit.labs.overthewire.org -p 2220

# Enter v to start vim
# Enter :set shell=/bin/sh to set the shell the same as mine
# Enter :shell to start a shell

ls
# -> bandit27-do  text.txt

./bandit27-do
# -> Example: ./bandit27-do id
# This command lets you run a command as bandit27

# Display password for bandit27
./bandit27-do cat /etc/bandit_pass/bandit27
# This will output the password


##########################################################################
# Userful resources
# https://superuser.com/questions/287994/how-to-specify-shell-for-vim