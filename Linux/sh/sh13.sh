#!/bin/bash
# Program:
#       Repeat question until user input correct answer.
# History:
# 2016/02/03    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

while [ "$yn" != 'y' -a "$yn" != 'Y' ]
do
    read -p "Please input yes/YES to stop this program: " yn
done
echo "OK! you input the correct answer."
