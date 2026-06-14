#!/bin/sh
# Level Goal: There is a git repository at 
# ssh://bandit28-git@localhost/home/bandit28-git/repo via the port 2220.
# The password for the user bandit28-git is the same as for the user
# bandit28.
# Clone the repository and find the password for the next level.

# Commands you may need to solve this level: git

# Create temporary directory (if not yet created)
mkdir /tmp/my-temp-folder

cd /tmp/my-temp-folder

# Clone repository
git clone ssh://bandit28-git@localhost:2220/home/bandit28-git/repo
# When prompted, enter password of bandit28

ls
# -> repo

cd repo
ls
# -> README.md

cat README.md
# -> # Bandit Notes
# -> Some notes for level29 of bandit.
# -> ## credentials
# -> - username: bandit29
# -> - password: xxxxxxxxxx

# Check git log
git log
# -> commit 817e303aa6c2b207ea043c7bba1bb7575dc4ea73 (HEAD -> master, origin/master, origin/HEAD)
# -> Author: Morla Porla <morla@overthewire.org>
# -> Date:   Thu Sep 19 07:08:39 2024 +0000
# -> 
# ->     fix info leak
# -> 
# -> commit 3621de89d8eac9d3b64302bfb2dc67e9a566decd
# -> Author: Morla Porla <morla@overthewire.org>
# -> Date:   Thu Sep 19 07:08:39 2024 +0000
# -> 
# ->     add missing data
# -> 
# -> commit 0622b73250502618babac3d174724bb303c32182
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:39 2024 +0000
# -> 
# ->    initial commit of README.md

# Display the changes to README.md for the commit 3621de89d8eac9d3b64302bfb2dc67e9a566decd
git show 3621de89d8eac9d3b64302bfb2dc67e9a566decd:README.md
# -> # Bandit Notes
# -> Some notes for level29 of bandit.
# -> ## credentials
# -> - username: bandit29
# -> - password: [bandit29 password]