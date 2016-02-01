# 鸟哥的私房菜
## 第七章
### 7.1 目录与路径
#### 7.1.2 目录的相关操作
##### 特殊的目录
- "."
- ".."
- "-"
- "~"
- "~account"

##### cd -- Change Directory
##### pwd -- Print Working Directory
- pwd [-P]

##### mkdir -- Make Directory
- make [-mp] 目录名称
- -m 权限设置
- -p 递归创建

##### rmdir
- rmdir [-p] 目录名称
- p 连同上层空的目录也一块删除

##### $PATH
- #$PATH="$PATH":/root

### 7.2 文件与目录
#### ls
- ls [-aAdfFhilnrRSt]
- ls --color=auto
- ls --color=always
- ls --color=never
- ls --full-time
- ls --time={atime, ctime}
#### 7.2.2 复制、删除与移动
##### cp 
- cp [-adfilprsu] source destination
##### rm
- rm [-fir]
- #\rm -r /tmp/etc
- #touch ./-aaa-
- #rm ./-aaa-
##### mv
-mv [-fiu] source destination
#### basename && dirname
- basename /etc/sysconfig/network ----network
- dirname  /etc/sysconfig/network ----/etc/sysconfig

### 7.3 文件内容查阅
- cat
- tac
- nl
- more
- less
- head
- tial
- od
#### 7.3.1 直接查看文件内容
##### cat
- cat [-AbEnTv]
##### tac 反向显示
##### nl
- nl [-bnw]
- -b a 类似cat -n
- -n ln
- -n rn
- -n rz
- -w
- #nl -b a /etc/issue
- #nl -b a -n rz /etc/issue
- #nl -b a -n rz -w 3 /etc/issue

#####more /etc/man.config
- 空格
- Enter
- /字符串
- :f
- q
- b
#####less
- 空格键
- [PageDown]
- [PageUp]
- /字符串
- ?字符串
- n
- N
- q
#### 7.3.3 数据选取
##### head
- head [-n number]
- #head /etc/man.config
- #head -n 20 /etc/man.config
- #head -n -100 /etc/man.config
##### tail
- #tail /etc/man.config
- #tail -n 20 /etc/man.config
- #tail -n +100 /etc/man.config
- #tail -f /var/log/messages 持续监测数据
##### od [-t TYPE]
- -t 
- a
- c
- d
- f
- o
- x
- #od -t c /usr/bin/passwd
##### touch [-acdmt]

