#!/bin/bash
# Program:
#       Program shows the script name, parameters...
# History:
# 2016/02/02    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "The script name is $0"
echo "Total parameter number is $#"
echo "Your whole paramter is $@"
shift
echo "Total parameter number is $#"
echo "Total parameter number is $#"
shift 3
echo "Your whole paramter is $@"
echo "Your whole paramter is $@"

