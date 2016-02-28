#!/bin/bash
# Program:
#       Repeat question until uesr input the right answer
# History:
# 2016/02/03    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

until [ "$yn" == 'y' -o "$yn" == 'Y' ]
do
    read -p "Input the right answer to stop this program: " yn
done
echo "OK!You input the correct answer."

