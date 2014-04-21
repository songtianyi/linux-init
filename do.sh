#!/bin/bash

set -u

basedir=$(cd `dirname $0`; pwd)

# colorful output
BOOTUP=color
RES_COL=60
MOVE_TO_COL="echo -en \\033[${RES_COL}G"
SETCOLOR_SUCCESS="echo -en \\033[1;32m"
SETCOLOR_FAILURE="echo -en \\033[1;31m"
SETCOLOR_WARNING="echo -en \\033[1;33m"
SETCOLOR_NORMAL="echo -en \\033[0;39m"
success() {
  [ "$BOOTUP" = "color" ] && $MOVE_TO_COL
  echo -n "["
  [ "$BOOTUP" = "color" ] && $SETCOLOR_SUCCESS
  echo -n $"  PASS  "
  [ "$BOOTUP" = "color" ] && $SETCOLOR_NORMAL
  echo -n "]"
  echo -ne "\r"
  echo "Check $1"
}
failure() {
  [ "$BOOTUP" = "color" ] && $MOVE_TO_COL
  echo -n "["
  [ "$BOOTUP" = "color" ] && $SETCOLOR_FAILURE
  echo -n $"FAILED"
  [ "$BOOTUP" = "color" ] && $SETCOLOR_NORMAL
  echo -n "]"
  echo -ne "\r"
  echo "Check $1"
}


WrongRsponse () {
    echo "$0 new_user(eg. usr1)"
    exit 1
}

if [[ $# -lt 1 ]]; then
    WrongRsponse
fi

USR1=$1

do_check_release(){
    cat /etc/issue
}

for script in `ls ${basedir}/???-*.sh`
do
    source $script
    if [ $? -eq 0 ]; then
    	success $script

   	#add success flag for monitoring
   	if [[ $ROLE = 'uhost' ]];then
   		touch /tmp/`basename $script`.success
   	fi
   else
   	failure $script

   	#add failure flag for monitoring
   	if [[ $ROLE = 'uhost' ]];then
   		touch /tmp/`basename $script`.failure
   	fi

   	exit 1
   fi
done

