#!/bin/sh

mkdir /home/$USR1/android

if [ `getconf LONG_BIT` -eq 64 ];then
        echo 64bit
	url=http://dl.google.com/android/adt/22.6.2/adt-bundle-linux-x86_64-20140321.zip
else
        echo 32bit
	url=http://dl.google.com/android/adt/22.6.2/adt-bundle-linux-x86-20140321.zip
fi

do_get(){
    wget -c 0 $url -P /home/$USR1/android
    cd /home/$USR1/android
    unzip ${url##*/}
}


if [ `getconf LONG_BIT` -eq 64 ];then
    yum install libstdc++.i686
    yum install ncurses-libs.i686
    yum install zlib.i686
fi

do_get




