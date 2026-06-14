#!/bin/sh
# Level Goals: To gain access to the next level, you should use the setuid
# binary in the homedirectory. Execute it without arguments to find out
# how to use it. The password for this level can be found in the usual
# place (/etc/bandit_pass), after you have used the setuid binary.

# Wrong solution. Need to update
# See bandit26 for reference

./bandit20-do
# Output of this command:
# Run a command as another user.
#   Example: ./bandit20-do id

# Get id of the owner of the file /etc/bandit_pass/bandit20
stat -c "%u %U" /etc/bandit_pass/bandit20
# Output
# - > 11020 bandit20

# Not sure how to use the comand, so I reviewed the help docs
./bandit20-do --help
# Output start
# Usage: env [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]
# Set each NAME to VALUE in the environment and run COMMAND.

# Mandatory arguments to long options are mandatory for short options too.
#   -i, --ignore-environment  start with an empty environment
#   -0, --null           end each output line with NUL, not newline
#   -u, --unset=NAME     remove variable from the environment
#   -C, --chdir=DIR      change working directory to DIR
#   -S, --split-string=S  process and split S into separate arguments;
#                         used to pass multiple arguments on shebang lines
#       --block-signal[=SIG]    block delivery of SIG signal(s) to COMMAND
#       --default-signal[=SIG]  reset handling of SIG signal(s) to the default
#       --ignore-signal[=SIG]   set handling of SIG signal(s) to do nothing
#       --list-signal-handling  list non default signal handling to stderr
#   -v, --debug          print verbose information for each processing step
#       --help        display this help and exit
#       --version     output version information and exit

# A mere - implies -i.  If no COMMAND, print the resulting environment.

# SIG may be a signal name like 'PIPE', or a signal number like '13'.
# Without SIG, all known signals are included.  Multiple signals can be
# comma-separated.  An empty SIG argument is a no-op.

# Exit status:
#   125  if the env command itself fails
#   126  if COMMAND is found but cannot be invoked
#   127  if COMMAND cannot be found
#   -    the exit status of COMMAND otherwise

# GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
# Full documentation <https://www.gnu.org/software/coreutils/env>
# or available locally via: info '(coreutils) env invocation'

# Output end

./bandit20-do id=11020 cat /etc/bandit_pass/bandit20
# Outputs password
