#!/bin/sh

##################aliedit############################
if [ -f "aliedit.tar.gz" ] ; then
        echo package exists
else
        wget https://download.alipay.com/alipaysc/linux/aliedit/1.0.3.20/aliedit.tar.gz
        tar -xf aliedit.tar.gz
fi
if [ `getconf LONG_BIT` -eq 64 ];then
        echo 64bit
        ln -sv /usr/lib64/libpng15.so.15.* /usr/lib64/libpng12.so.0
else
        echo 32bit
fi
su $USR1 "./aliedit.sh"
rm -rf aliedit*

