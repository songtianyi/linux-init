#!/bin/sh

#essential tools
yum -y install vim wget make gcc gcc-c++ autoconf yum-fastestmirror
#office
yum -y groupinstall "Office/Productivity"
#some useful tools
yum -y install httpd telnet davfs2 compress svn git strace ffpeg rdesktop cdrecord dos2unix vnc sshpass transmission
#mail
yum -y install thunderbird
#network tools 
sudo yum -y install dstat bridge-utils tunctl lynx
