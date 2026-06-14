#!/bin/sh
# Level Goal: There is a git repository at
# ssh://bandit30-git@localhost/home/bandit30-git/repo via the port 2220.
# The password for the user bandit29-git is the same as for the user
# bandit30.
# Clone the repository and find the password for the next level.

# Commands you may need to solve this level: git

# Create temporary directory (if not yet created)
mkdir /tmp/my-temp-folder

cd /tmp/my-temp-folder

# Clone repository
git clone ssh://bandit30-git@localhost:2220/home/bandit30-git/repo
# When prompted, enter password of bandit28

ls
# -> repo

cd repo
ls
# -> README.md

cat README.md
# -> just an epmty file... muahaha

# Check git log
git log
# -> commit acfc3c67816fc778c4aeb5893299451ca6d65a78 (HEAD -> master, origin/master, origin/HEAD)
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:44 2024 +0000
# -> 
# ->     initial commit of README.md

# Get list of branches
git branch -r
# -> origin/HEAD -> origin/master
# -> origin/master

# At this point I started to do more research

# use git tagging
# https://git-scm.com/book/en/v2/Git-Basics-Tagging
git tag
# -> secret

git show secret
# -> [bandit31 password]
