#!/bin/sh

yum -y install wget
cd /etc/yum.repos.d/
rm -f *163.repo*
wget http://mirrors.163.com/.help/fedora-163.repo
wget http://mirrors.163.com/.help/fedora-updates-163.repo
