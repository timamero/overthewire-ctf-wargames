#!/bin/sh
# Level Goal: There is a git repository at
# ssh://bandit27-git@localhost/home/bandit27-git/repo via the port 2220.
# The password for the user bandit27-git is the same as for the user
# bandit27.

# Clone the repository and find the password for the next level.

# Commands you may need to solve this level: git


# Create temporary directory (if not yet created)
mkdir /tmp/my-temp-folder

cd /tmp/my-temp-folder

# Clone repository
git clone ssh://bandit27-git@localhost:2220/home/bandit27-git/repo
# Enter password of bandit27

ls
# -> repo

le repo
# -> README

cat repo/README
# -> The password to the next level is: [bandit28 password]