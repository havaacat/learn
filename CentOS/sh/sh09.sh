#!/bin/bash
# Program:
#   check $1 is eqaul to 'hello'
# History:
# 2016/02/02    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if [ "$1" == "hello" ]; then
    echo "Hello, how are you?"
elif [ "$1" == "" ]; then
    echo "You must input paramater, ex> {$0 someword}"
else
    echo "The only parameter is 'hollo', ex> {$0 hello}"
fi
