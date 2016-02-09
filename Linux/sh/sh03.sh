#!/bin/bash
# Program:
#       named by date & user's input
# History:
# 2016/02/02    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1.输入文件名
echo -e "I will use 'touch' to create 3 files. "
read -p "Please input your filename: " files

# 2.变量功能
filename=${files:-"filename"}

# 3.生成文件名
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 days ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

# 4.创建文件
touch "$file1" "$file2" "$file3"


