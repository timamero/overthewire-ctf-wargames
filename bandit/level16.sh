#!/bin/sh
# Level Goal: The credentials for the next level
# can be retrieved by submitting the password of
# the current level to a port on localhost in the
# range 31000 to 32000. First find out which of
# these ports have a server listening on them.
# Then find out which of those speak SSL and
# which don’t. There is only 1 server that will
# give the next credentials, the others will
# simply send back to you whatever you send to it.

# Note: sV option probes open ports to determine service/version info
# Note: -T4 enables faster execution
nmap -sV -T4 -p 31000-32000 localhost
# Output:
# Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-22 03:58 UTC
# Nmap scan report for localhost (127.0.0.1)
# Host is up (0.00015s latency).
# Not shown: 996 closed tcp ports (conn-refused)
# PORT      STATE SERVICE     VERSION
# 31046/tcp open  echo
# 31518/tcp open  ssl/echo
# 31691/tcp open  echo
# 31790/tcp open  ssl/unknown
# 31960/tcp open  echo
# 1 service unrecognized despite returning data. If you know the service/version, please submit the following fingerprint at https://nmap.org/cgi-bin/submit.cgi?new-service :
# SF-Port31790-TCP:V=7.94SVN%T=SSL%I=7%D=6/22%Time=66764BF0%P=x86_64-pc-linu
# SF:x-gnu%r(GenericLines,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x2
# SF:0current\x20password\.\n")%r(GetRequest,32,"Wrong!\x20Please\x20enter\x
# SF:20the\x20correct\x20current\x20password\.\n")%r(HTTPOptions,32,"Wrong!\
# SF:x20Please\x20enter\x20the\x20correct\x20current\x20password\.\n")%r(RTS
# SF:PRequest,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x20current\x20
# SF:password\.\n")%r(Help,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x
# SF:20current\x20password\.\n")%r(FourOhFourRequest,32,"Wrong!\x20Please\x2
# SF:0enter\x20the\x20correct\x20current\x20password\.\n")%r(LPDString,32,"W
# SF:rong!\x20Please\x20enter\x20the\x20correct\x20current\x20password\.\n")
# SF:%r(SIPOptions,32,"Wrong!\x20Please\x20enter\x20the\x20correct\x20curren
# SF:t\x20password\.\n");

# Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done: 1 IP address (1 host up) scanned in 157.76 seconds

# Note: Ports 31518 and 31790 both speak SSL. It looks like port 31790 returned a
# "Wrong!" message which tells me that is the port I need to submit the
# password to

echo "kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx" | openssl s_client -connect localhost:31790 -ign_eof
# Output (after read R BLOCK)
# Correct!
# -----BEGIN RSA PRIVATE KEY-----
# [RSA KEY HERE]
# -----END RSA PRIVATE KEY-----

# closed

#################################################
# Note: Exit from overthewire server. Then save rsa key to file
# Note: Need to give file the right permissions
chmod 600 rsa17

# Note: Log in to bandit17 level with rsa key
ssh -i ./rsa17 bandit17@localhost -p 2220
