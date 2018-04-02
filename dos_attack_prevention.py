
import os,re
os.system('netstat -n -p|grep SYN_REC|wc -l|cat >abc.txt')

f=open("abc.txt","r")
if int(f.read())>44:
	os.system('netstat -anp|grep SYN_REC|awk "{print $5}"|cut -d: -f1|sort|sort -n|cat >abc.txt')
	os.system('c=$(cat "abc.txt")')
	os.system('sudo ufw deny from $c  to any')
f.close()
