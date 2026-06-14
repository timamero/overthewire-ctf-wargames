#!/bin/sh
# Level Goal: There is a git repository at
# ssh://bandit29-git@localhost/home/bandit29-git/repo via the port 2220.
#  The password for the user bandit29-git is the same as for the user
# bandit29.
# Clone the repository and find the password for the next level.

# Commands you may need to solve this level: git

# Create temporary directory (if not yet created)
mkdir /tmp/my-temp-folder

cd /tmp/my-temp-folder

# Clone repository
git clone ssh://bandit29-git@localhost:2220/home/bandit29-git/repo
# When prompted, enter password of bandit28

ls
# -> repo

cd repo
ls
# -> README.md

cat README.md
# -> # Bandit Notes
# -> Some notes for bandit30 of bandit.
# -> ## credentials
# -> - username: bandit30
# -> - password: <no passwords in production!>

# Check git log
git log
# -> commit 6ac7796430c0f39290a0e29a4d32e5126544b022 (HEAD -> master, origin/master, origin/HEAD)
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->     fix username
# -> 
# -> commit e65a928cca4db1863b478cf5e93d1d5b1c1bd6b2
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->     initial commit of README.md

# Display the changes to README.md for the commit e65a928cca4db1863b478cf5e93d1d5b1c1bd6b2
git show e65a928cca4db1863b478cf5e93d1d5b1c1bd6b2:README.md
# Nothing useful

# Display the changes to README.md for the commit 6ac7796430c0f39290a0e29a4d32e5126544b022
git show 6ac7796430c0f39290a0e29a4d32e5126544b022:README.md
# Nothing useful

# Get list of branches
git branch -r
# -> origin/HEAD -> origin/master
# -> origin/dev
# -> origin/master
# -> origin/sploits-dev

# Checkout the branch sploits-dev
git checkout sploits-dev

# Check git log for branch sploits-dev
git log
# -> commit 72267325ede0966e2b002e11154e6a867ebdd5b4 (HEAD -> sploits-dev, origin/sploits-dev)
# -> Author: Morla Porla <morla@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->     add some silly exploit, just for shit and giggles
# -> 
# -> commit 6ac7796430c0f39290a0e29a4d32e5126544b022 (origin/master, origin/HEAD, master)
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->     fix username
# -> 
# -> commit e65a928cca4db1863b478cf5e93d1d5b1c1bd6b2
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->     initial commit of README.md

# Display the changes to README.md for the commit 72267325ede0966e2b002e11154e6a867ebdd5b4
git show 72267325ede0966e2b002e11154e6a867ebdd5b4:README.md
# Nothing useful

# Show differences between file changes
git log -p
# Nothing useful

# Checkout the branch dev
git checkout dev

# Check git log for branch dev
git log
# -> commit 081ac380883f49b0d9dc76a82c53211ef7ba74b0 (HEAD -> dev, origin/dev)
# -> Author: Morla Porla <morla@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->    add data needed for development
# -> 
# -> commit 03aa12c85ea4c1ea170b8e5fe80e55de7853b4db
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->     add gif2ascii
# -> 
# -> commit 6ac7796430c0f39290a0e29a4d32e5126544b022 (origin/master, origin/HEAD, master)
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# ->     fix username
# -> 
# -> commit e65a928cca4db1863b478cf5e93d1d5b1c1bd6b2
# -> Author: Ben Dover <noone@overthewire.org>
# -> Date:   Thu Sep 19 07:08:41 2024 +0000
# -> 
# -> initial commit of README.md

# Display the changes to README.md for the commit 081ac380883f49b0d9dc76a82c53211ef7ba74b0
git show 081ac380883f49b0d9dc76a82c53211ef7ba74b0:README.md
# -> # Bandit Notes
# -> Some notes for bandit30 of bandit.
# -> 
# -> ## credentials
# -> 
# -> - username: bandit30
# -> - password: [bandit30 password]
