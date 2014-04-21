#!/bin/sh

#################exfat############################
yum -y install scons fuse-devel svn
svn co http://exfat.googlecode.com/svn/trunk/ exfat-read-only
fat-read-only
scons install
cd ..
rm -rf exfat-read-only
