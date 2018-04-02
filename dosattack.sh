#!/bin/bash
netstat -n -p|grep SYN_REC|wc -l|cat >abc.txt
b=$(cat "abc.txt")
echo $b
echo '1'|cat >xyz.txt
if((b>100))
 then
  echo "DOS attack in progress!!!!!!!!!!!"
  netstat -anp|grep SYN_REC|awk '{print $5}'|cut -d: -f1|sort|sort -n|cat >abc.txt  
  grep -o "[0-9].[0-9].[0-9].*" abc.txt|cat >>xyz.txt
  c=$(cat "xyz.txt")
  sudo ufw deny from $c  to any
fi
