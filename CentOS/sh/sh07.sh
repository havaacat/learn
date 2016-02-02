#!/bin/bash
# Program:
#       Program shows the script name, parameters...
# History:
# 2016/02/02    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "The script name is $0"
echo "Total parameter number is $#"
[ "$#" -le 2 ] && echo "The number of parameter is less than 2.Stop here." && exit 0
echo "Your whole paramter is $@\n"
echo "The 1st parameter is $1"
echo "The 2nd parameter is $2"

