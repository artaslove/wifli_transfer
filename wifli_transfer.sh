#!/bin/bash
IP="192.168.11.123"
port="23"
username="admin"
password="admin"
permissionsfile="/bin/ated" #This file on the remote filesystem has the permissions we want
if [ $# == 1 ] && [ -e $1 ] && ! [ -d $1 ]; then
 echo -e 'set timeout 120\nspawn nc '$IP' '$port'\nexpect "login:"\nsend "'$username'\\r"\nexpect "Password:"\nsend "'$password'\\r"\nexpect "#"\nsend "cp '$permissionsfile' /bin/'$1'\\r"\nexpect "#"\nsend "cp /dev/null /bin/'$1'\\r"\nexpect "#"' > cmd.tmp
 hexdump -v -e '128/1 "_%02x"' -e '"\n"' $1 | sed -e 's/_/\\\\x/g;s/\\\\x  //g' -e "s/^/send \"echo -e -n \'/;s/$/\' >> \/bin\/"$1'\\r'"\"\nexpect \"#\"/" >> cmd.tmp
 echo 'interact' >> cmd.tmp
 expect -f cmd.tmp
 rm cmd.tmp
else 
 echo "Usage: $0 [binary file in current directory]"
fi
# Hint: upload static nc for mips and use that now instead of this initial script.
# http://hackaday.com/2012/06/11/adding-a-router-and-wireless-camera-to-a-remote-controlled-helicopter/
# http://forums.hackaday.com/viewtopic.php?f=8&t=1743
