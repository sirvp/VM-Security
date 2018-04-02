#!/bin/bash
nmap -n localhost|grep open|cat >port.txt
grep -o "[0-9]*" port.txt|cat >open_port.txt
echo "Attention!!! The following ports are open in your system"
cat open_port.txt
