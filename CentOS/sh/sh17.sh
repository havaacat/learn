#!/bin/bash
# Program:
#       Use ping command to check the network's PC state.
# History
# 2016/02/03    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
network='192.168.1'
for sitenu in $(seq 1 100)
do
    ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
    if [ "$result" == 1 ]; then
        echo "${network}.${sitenu} is UP."
    else
        echo "${network}.${sitenu} is down."
    fi
done
