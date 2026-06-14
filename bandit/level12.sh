#!/bin/sh
# Level Goal: The password for the next level is
# stored in the file data.txt, which is a hexdump
# of a file that has been repeatedly compressed.
# For this level it may be useful to create a
# directory under /tmp in which you can work. Use
# mkdir with a hard to guess directory name. Or
# better, use the command “mktemp -d”. Then copy
# the datafile using cp, and rename it using mv
# (read the manpages!)

# Copied file to tmp folder and renamed it to data12.txt
cp data.txt /tmp/myfolder
mv data.txt data12.txt
xxd -r data12.txt >data12rev.txt

# The resulting output is encoded so I ran file to check
# what kind of file it is
find . -type f -exec file -e encoding '{}' \;
# Output:
# ./data12rev.txt: gzip compressed data, was "data2.bin", last modified: Tue Jun 11 21:29:38 2024, max compression, from Unix, original size modulo 2^32 577
# ./data12.txt: ASCII text

# Need to change file suffix to .gz
mv data12rev.txt data12rev.gz

gunzip data12rev.gz

# Check file output
find . -type f -exec file -e encoding '{}' \;
# Output:
# ./data12rev.txt: gzip compressed data, was "data2.bin", last modified: Tue Jun 11 21:29:38 2024, max compression, from Unix, original size modulo 2^32 577
# ./data12.txt: ASCII text
# ./data12rev: bzip2 compressed data, block size = 900k

bunzip2 data12rev
# Output:
# bunzip2: Can't guess original name for data12rev -- using data12rev.out

# Check file output
find . -type f -exec file -e encoding '{}' \;
# Output:
# ./data12rev.txt: gzip compressed data, was "data2.bin", last modified: Tue Jun 11 21:29:38 2024, max compression, from Unix, original size modulo 2^32 577
# ./data12.txt: ASCII text
# ./data12rev.out: gzip compressed data, was "data4.bin", last modified: Tue Jun 11 21:29:38 2024, max compression, from Unix, original size modulo 2^32 20480

mv data12rev.out data12rev2.gz
gunzip data12rev2.gz

# Check file output
find . -type f -exec file -e encoding '{}' \;
# Output:
# ./data12rev.txt: gzip compressed data, was "data2.bin", last modified: Tue Jun 11 21:29:38 2024, max compression, from Unix, original size modulo 2^32 577
# ./data12.txt: ASCII text
# ./data12rev2: POSIX tar archive (GNU)

tar --extract -f data12rev2
# This created a file called data5.bin with same type

tar --extract -f data5.bin
# This created a file called data6.bin, type output is bzip2 compressed data

bunzip2 data6.bin
# This created a file called data6.bin.out, type tar archive

tar --extract -f data6.bin.out
# This created a file called data8.bin, type gzip compressed data

mv data8.bin data8.gz
gunzip data8.gz
# This created the file data8 with the password!

cat data8.gz
