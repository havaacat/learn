#!/bin/bash
# Program:
#       corss
# 2016/02/02    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e "Input 2 numbers, I will cross them.\n"
read -p "First number:" firstnu
read -p "Second number:" secnu
total=$(($firstnu*$secnu))
echo -e "\nThe result of $firstnu * $secnu is $total"
