#!/bin/bash

if [ `getconf LONG_BIT` -eq 64 ];then
    wget http://jaist.dl.sourceforge.net/project/wkhtmltopdf/0.12.0/wkhtmltox-linux-amd64_0.12.0-03c001d.tar.xz -P /home/$USR1/Downloads
else
    wget http://ncu.dl.sourceforge.net/project/wkhtmltopdf/0.12.0/wkhtmltox-linux-i386_0.12.0-03c001d.tar.xz -P /home/$USR1/Downloads
