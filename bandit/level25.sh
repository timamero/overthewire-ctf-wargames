#!/bin/sh
# Level Goal: Logging in to bandit26 from bandit25 should be fairly easy…
# The shell for user bandit26 is not /bin/bash, but something else. Find
# out what it is, how it works and how to break out of it.

# NOTE: if you’re a Windows user and typically use Powershell to ssh into
# bandit: Powershell is known to cause issues with the intended solution
# to this level. You should use command prompt instead.

# Commands you may need to solve this level: ssh, cat, more, vi, ls, id, pwd

ls -la
# -> total 40
# -> drwxr-xr-x  2 root     root     4096 Jul 17 15:57 .
# -> drwxr-xr-x 70 root     root     4096 Jul 17 15:58 ..
# -> -rw-r-----  1 bandit25 bandit25   33 Jul 17 15:57 .bandit24.password
# -> -r--------  1 bandit25 bandit25 1679 Jul 17 15:57 bandit26.sshkey
# -> -rw-r-----  1 bandit25 bandit25  151 Jul 17 15:57 .banner
# -> -rw-r--r--  1 root     root      220 Mar 31 08:41 .bash_logout
# -> -rw-r--r--  1 root     root     3771 Mar 31 08:41 .bashrc
# -> -rw-r-----  1 bandit25 bandit25   66 Jul 17 15:57 .flag
# -> -rw-r-----  1 bandit25 bandit25    4 Jul 17 15:57 .pin
# -> -rw-r--r--  1 root     root      807 Mar 31 08:41 .profile

ssh -i ./bandit26.sshkey bandit26@localhost -p 2220
# Able to connect but the connection closed right away with error

# Use find command in /etc directory. This directory contains configuration files
# and since the chalenge description mentioned that the shell for bandit26 is not
# /bin/bash, there may be information within the etc folder that can provide more
# information
find /etc/ -type f -exec grep "bandit26" {} \; 2> /dev/null
# -> bandit26:x:11026:
# -> bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext
# -> bandit26:1410720:65536
# -> bandit26:1410720:65536
# -> bandit26:x:11026:11026:bandit level 26:/home/bandit26:/usr/bin/showtext
# -> bandit26:1410720:65536
# -> bandit26:1410720:65536
# -> bandit26:x:11026:

cat /usr/bin/showtext
# -> #!/bin/sh
# -> export TERM=linux
# -> exec more ~/text.txt
# -> exit 0

# After researching on Google..
# Minimize window to the smallest height, then input:
ssh -i ./bandit26.sshkey bandit26@localhost -p 2220
# Instead of automatically closing the connection, the more functionality is triggered
# While more is open, press "v"
# This will open vim
# While in vim, run the command (:e filename: opens a file)
:e /etc/bandit_pass/bandit26
# This will output the password
