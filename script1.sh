#!/bin/bash

#making sure script is created in my home directory
#creating directory TrueLayer only if it doesn't exist
cd ~ 
if [ ! -d TrueLayer ]
then
	mkdir TrueLayer
fi
cd TrueLayer
touch TLTest.txt

SCRIPTNAME="script1.sh"    #name of script

cat >> ~/TrueLayer/TLTest <<EOF
Date script run: $(date)
Script name: $(basename $0)
Full List of TrueLayer directory: $(ls -la)
IP details of the network interface: $(hostname -I)
Available RAM in MB: (free -h)
PIDs of running script: $(ps -ef | grep $SCRIPTNAME | grep -v grep)
Name of user: (whoami)
### end of script ### 

EOF