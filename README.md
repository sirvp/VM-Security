# VM-Security
A package to provide comprehensive security for virtual machines from network attacks like DOS. Also displays vulnerabilities in a network

The above package currently contains two shell scripts.
  1. Counters simple DOS attack
  2. Alerts user if open ports
  
  
# dosattack.sh

This script uses the netstat command to identify IPs that are constantly giving SYN_REC requsts to a host. THis is one type 	of DOS attack. These IPs are then seperated from the other content and then blocked by the ufw command.
    
Requirements:

ufw package must be preinstalled


# openports.sh

This script uses nmap to identify open ports in a system.

Requirements:

nmap must be preinstalled
	
