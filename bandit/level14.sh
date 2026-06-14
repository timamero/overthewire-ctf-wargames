#!/bin/sh
# Level Goal: The password for the next level can
# be retrieved by submitting the password of the
# current level to port 30000 on localhost.

# Create a file with the password
echo "my-password" >/tmp/mytempdir/pass

# Transfer the data to port 30000
nc localhost 30000 </tmp/mytempdir/pass

#################################################
# Useful things I learned

# Then nc command is used for performing operations
# related to TCP and UDP. It also gives you a means
# to transfering files between computers.

#################################################
# References that helped me
# https://www.tecmint.com/netcat-nc-command-examples/
# https://linux.die.net/man/1/nc
