#!/bin/bash
# Program:
#       Use function to repeat information.
# History:
# 2016/02/03    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:usr/local/sbin:~/bin
export PATH

function printit() {
    echo "Your choice is $1"
}

echo "This program will pirnt your selection!"
case $1 in
    "one")
    printit one
    ;;
    "two")
    printit two
    ;;
    "three")
    printit three
    ;;
    *)
    echo "Usage $0 {one|two|three}"
    ;;
esac
