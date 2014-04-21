#!/bin/bash


if [ `getconf LONG_BIT` -eq 64 ];then
    echo 64bit

cat << 'EOF' > /etc/yum.repos.d/google-chrome-64.repo
[google64]
name=Google–x86_64
baseurl=http://dl.google.com/linux/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF


else
    echo 32bit

cat << 'EOF' > /etc/yum.repos.d/google-chrome-32.repo
[google]
name=Google–i386
baseurl=http://dl.google.com/linux/rpm/stable/i386
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

fi

yum -y install google-chrome-stable
    
