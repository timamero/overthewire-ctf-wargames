#!/bin/sh
# Level Goal: There is a git repository at
# ssh://bandit31-git@localhost/home/bandit31-git/repo via the port 2220.
# The password for the user bandit31-git is the same as for the user
# bandit31.
# Clone the repository and find the password for the next level.

# Commands you may need to solve this level: git

# Create temporary directory (if not yet created)
mkdir /tmp/my-temp-folder

cd /tmp/my-temp-folder

# Clone repository
git clone ssh://bandit31-git@localhost:2220/home/bandit31-git/repo
# When prompted, enter password of bandit28

ls
# -> repo

cd repo
ls
# -> README.md

cat README.md
# -> This time your task is to push a file to the remote repository.
#
# -> Details:
# ->    File name: key.txt
# ->    Content: 'May I come in?'
# ->    Branch: master

# Create file key.txt
touch key.txt

# Open file in nano
nano key.txt

# Add the line `May I come in?`. Save and close the file.

# Check the state of working directory
git status
# -> On branch master
# -> Your branch is up to date with 'origin/master'.
# ->
# -> nothing to commit, working tree clean

# The created file doesn't seem to be tracked. View .gitignore file.
cat .gitignore
# -> *.txt

# Force add the key.txt file
git add -f key.txt

# Check the state of working directory
# -> git status
# -> On branch master
# -> Your branch is up to date with 'origin/master'.
# -> 
# -> Changes to be committed:
# ->   (use "git restore --staged <file>..." to unstage)
# -> 	new file:   key.txt

# Create the commit
git commit -m "Create key.txt"
# -> [master f108bc6] Create key.txt
# -> 1 file changed, 1 insertion(+)
# -> create mode 100644 key.txt

# Push the commit
git push
# -> The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
# -> ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
# -> This key is not known by any other names.
# -> Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
# -> Could not create directory '/home/bandit31/.ssh' (Permission denied).
# -> Failed to add the host to the list of known hosts (/home/bandit31/.ssh/known_hosts).
# ->                          _                     _ _ _   
# ->                         | |__   __ _ _ __   __| (_) |_ 
# ->                         | '_ \ / _` | '_ \ / _` | | __|
# ->                         | |_) | (_| | | | | (_| | | |_ 
# ->                         |_.__/ \__,_|_| |_|\__,_|_|\__|
# ->                                                      
# ->
# ->                       This is an OverTheWire game server. 
# ->             More information on http://www.overthewire.org/wargames
# ->
# -> bandit31-git@localhost's password: 
# -> Enumerating objects: 4, done.
# -> Counting objects: 100% (4/4), done.
# -> Delta compression using up to 2 threads
# -> Compressing objects: 100% (2/2), done.
# -> Writing objects: 100% (3/3), 326 bytes | 326.00 KiB/s, done.
# -> Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
# -> remote: ### Attempting to validate files... ####
# -> remote: 
# -> remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
# -> remote: 
# -> remote: Well done! Here is the password for the next level:
# -> remote: [bandit32 password] 
# -> remote: 
# -> remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
# -> remote: 
# -> To ssh://localhost:2220/home/bandit31-git/repo
# ->  ! [remote rejected] master -> master (pre-receive hook declined)
# -> error: failed to push some refs to 'ssh://localhost:2220/home/bandit31-git/repo'