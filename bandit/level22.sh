#!/bin/sh
# Level Goal: A program is running automatically at regular intervals from
# cron, the time-based job scheduler. Look in /etc/cron.d/ for the
# configuration and see what command is being executed.

# Commands you may need to solve this level: cron, crontab, crontab(5)
# (use “man 5 crontab” to access this)

# NOTE: Looking at shell scripts written by other people is a very useful
# skill. The script for this level is intentionally made easy to read. If
# you are having problems understanding what it does, try executing it to
# see the debug information it prints.

ls -l /etc/cron.d/
# -> total 24
# -> -rw-r--r-- 1 root root 120 Jul 17 15:57 cronjob_bandit22
# -> -rw-r--r-- 1 root root 122 Jul 17 15:57 cronjob_bandit23
# -> -rw-r--r-- 1 root root 120 Jul 17 15:57 cronjob_bandit24
# -> -rw-r--r-- 1 root root 201 Apr  8 14:38 e2scrub_all
# -> -rwx------ 1 root root  52 Jul 17 15:59 otw-tmp-dir
# -> -rw-r--r-- 1 root root 396 Jan  9  2024 sysstat

cat /etc/cron.d/cronjob_bandit23
# @reboot bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
# * * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null

# @reboot: Run once after reboot (crontab(5))
# * * * * *: Run at every minute
# bandit23: Run as user bandit23
# /usr/bin/cronjob_bandit23.sh: Script to be executed

cat /usr/bin/cronjob_bandit23.sh
# -> #!/bin/bash
# -> myname=$(whoami)
# -> mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)
# -> echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"
# -> cat /etc/bandit_pass/$myname > /tmp/$mytarget

/usr/bin/cronjob_bandit23.sh
# -> Copying passwordfile /etc/bandit_pass/bandit22 to /tmp/8169b67bd894ddbb4412f91573b38db3

echo I am user bandit23 | md5sum | cut -d ' ' -f 1
# -> 8ca319486bfbbc3663ea0fbe81326349

cat /tmp/8ca319486bfbbc3663ea0fbe81326349
# -> password