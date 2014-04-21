#!/bin/sh

cd /home/$USR1
if [ ! -d bin ]; then
        mkdir bin
fi

echo '#!/bin/sh' > /home/$USR1/bin/go
echo 'if [ $# != 1 ];then' >> /home/$USR1/bin/go
echo '    echo usage:$0 [parameter]' >> /home/$USR1/bin/go
echo 'fi' >> /home/$USR1/bin/go
echo 'case $1 in' >> /home/$USR1/bin/go
echo '"vm3")' >> /home/$USR1/bin/go
echo "    sshpass -p songtianyi ssh songtianyi@192.168.8.153" >> /home/$USR1/bin/go
echo ';;' >> /home/$USR1/bin/go
echo 'esac' >> /home/$USR1/bin/go
chmod +x /home/$USR1/bin/go

