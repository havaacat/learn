#~/bin/bash
# Program:
#       User input a file name, program will check the flowing:
#       1.) exists 2.)file/directory 3.)file permissions
# History:
# 2016/02/02    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
# 1.输入文件名
echo -e "Input a filename, I will check the filename'type and \
    permission. \n\n"
read -p "Input a filename : " filename
test -z $filename && echo "You must input a filename." && exit 0
# 2.判断文件是否存在
test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0
# 3.判断文件属性
test -f $filename && filetype="file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"
# 4.开始输出信息
echo "The filename: $filename is a $filetype"
echo ", and the permissions are $perm"
