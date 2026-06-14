#!/bin/sh
# Level Goal: The password for the next level can
# be retrieved by submitting the password of the
# current level to port 30001 on localhost using
# SSL encryption.

# First open ssl connection with localhost at port 30001
openssl s_client -connect localhost:30001

# Interactive session with the ssl server will be
# opened. Send password and the server will
# respond with the the password for the next level
