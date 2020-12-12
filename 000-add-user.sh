#!/bin/sh

#add
useradd -md /home/$USR1 -G root $USR1

#build dir
cd /home/$USR1
mkdir trash Downloads Documents bin Pictures
