#!/bin/bash
# Program:
#       Input your demobilization date, I calculate how many days
#       before you demobilize.
# History:
# 2016/02/02	root	v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1.告知用途
echo "This program will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20161001): " date2

# 2.测试格式
date_d=$(echo $date2 | grep '[0-9]\{8\}')
if [ "$date_d" == "" ]; then
    echo "You put the wrong demobilizition date..."
    exit 1
fi

# 3.开始计算
declare -i date_dem=`date --date="$date2" +%s`
declare -i date_now=`date +%s`
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/60/60/24))
if [ "$date_total_s" -lt "0" ]; then
    echo "You had been demobilization before: " $((-1*$date_d)) " ago"
else
    declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
    echo "You will demobilize after $date_d days and $date_h hours."
fi

