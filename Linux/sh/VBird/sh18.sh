#!/bin/bash
# Program:
#       Using input dir name, I find the permission of fiels.
# History:
# 2016/02/03    root    v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
read -p "Input the dir name:" dir
if [ "$dir" == "" -o ! -d "$dir" ]; then
    echo "The $dir is not a directory."
    exit 1
fi
echo ${ls "$dir"}
filelist=${ls "$dir"}
for filename in $filelist
do
    perm=""
    test -r "$dir/$filename" && perm="perm readable"
    test -w "$dir/$filename" && perm="perm writeable"
    test -x "$dir/$filename" && perm="perm executable"
done
