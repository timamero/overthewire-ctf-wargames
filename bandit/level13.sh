#!/bin/sh
# Level Goal: The password for the next level is
# stored in /etc/bandit_pass/bandit14 and can
# only be read by user bandit14. For this level,
# you don’t get the next password, but you get a
# private SSH key that can be used to log into
# the next level. Note: localhost is a hostname
# that refers to the machine you are working on

# Private SSH key is in file sshkey.private
ssh bandit14@localhost -p 2220 -i ./sshkey.private

# Logged in as bandit14
cat /etc/bandit_pass/bandit14
