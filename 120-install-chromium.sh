#!/bin/sh

#install chromium
cd /etc/yum.repos.d/
wget http://repos.fedorapeople.org/repos/spot/chromium/fedora-chromium-stable.repo
yum -y install chromium
rm -f /etc/yum.repos.d/fedora-chromium-stable.repo*
