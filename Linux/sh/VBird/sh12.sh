#!/bin/sbin
# Program:
#       This script only accept the flowing paremeter: one, two, three.
# History:
# 2016/02/03    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will print your selection!"
# read -p "Input your choice: " choice
# case $choice in
case $1 in
    "one")
        echo "Your choice is ONE"
        ;;
    "two")
        echo "Your choice is TWO"
        ;;
    "three")
        echo "Your choice is THREE"
        ;;
    *)
        echo "Usage $0 {one|two|three}"
        ;;
esac
