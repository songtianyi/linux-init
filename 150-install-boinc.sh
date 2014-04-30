#!/bin/bash

#install
yum -y install boinc-client boinc-manager

#start
sudo /sbin/service boinc-client start
cd /var/lib/boinc
sudo -u boinc boinccmd --project_attach http://www.worldcommunitygrid.org 7831cff119fe5446ad1d2f3c6e9dd345

