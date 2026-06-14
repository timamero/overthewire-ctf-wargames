#!/bin/sh
# Level Goals: There is a setuid binary in the homedirectory that does the
# following: it makes a connection to localhost on the port you specify as
# a commandline argument. It then reads a line of text from the connection
# and compares it to the password in the previous level (bandit20). If the
# password is correct, it will transmit the password for the next level
# (bandit21).

ls
# -> suconnect

./suconnect
# -> This program will connect to the given port on localhost using TCP.
# -> If it receives the correct password from the other side, the next
# -> password is transmitted back.

# Use nc with -l option to listen to port
# Append & to end to keep the command running in the background
# Use | to send the password
echo "[password]" | nc localhost 30123 # Can use any port that you can connect to without error

./suconnect 30123
# -> Read: password
# -> Password matches, sended next password
# -> [next level password]
# -> [1]+  Done                    echo "0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO" | nc -l -p 30123
