#!/bin/sh
# Level Goal: A program is running automatically at regular intervals from
# cron, the time-based job scheduler. Look in /etc/cron.d/ for the
# configuration and see what command is being executed.

# Commands you may need to solve this level: cron, crontab, crontab(5)
# (use “man 5 crontab” to access this)

ls -l /etc/cron.d/
# -> -rw-r--r-- 1 root root 120 Jun 20 04:07 cronjob_bandit22
# -> -rw-r--r-- 1 root root 122 Jun 20 04:07 cronjob_bandit23
# -> -rw-r--r-- 1 root root 120 Jun 20 04:07 cronjob_bandit24
# -> -rw-r--r-- 1 root root 201 Apr  8 14:38 e2scrub_all
# -> -rwx------ 1 root root  52 Jun 20 04:08 otw-tmp-dir
# -> -rw-r--r-- 1 root root 396 Jan  9  2024 sysstat

cat /etc/cron.d/cronjob_bandit22
# -> @reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
# -> * * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null

# @reboot: Run once after reboot (crontab(5))
# * * * * *: Run at every minute
# bandit22: Run as user bandit22
# /usr/bin/cronjob_bandit22.sh: Script to be executed

cat /usr/bin/cronjob_bandit22.sh
# -> #!/bin/bash
# -> chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
# -> cat /etc/bandit_pass/bandit22 > /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

# Set permission of file /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv to rw-r--r--
# Save output of bandit22 password to /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
# -> password

##########################################################################
# Useful resources
#
# https://crontab.guru/#*_*_*_*_*
# https://chmod-calculator.com/?ref=tiny-helpers
