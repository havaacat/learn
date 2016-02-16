#!/bin/bash
# Program:
#       User input ...
# History:
# 2016/02/02    root    v0.1
PATH=/bin:/sbin/:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input your first name: " firstname
read -p "Please input your last name: " lastname
echo -e "\nYour full name is: $firstname $lastname"
