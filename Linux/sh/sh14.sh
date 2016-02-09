#!/bin/bash
# Program:
#       Use loop to caculate "1+2+3+...+100" result.
# History:
# 2016/02/03    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

i=0
s=0
while [ "$i" != 100 ]
do
    i=$(($i+1))
    s=$(($s+$i))
done
echo "The result of '1+2+3+...+100' is $s"

