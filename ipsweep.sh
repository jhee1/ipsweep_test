#!/usr/bin/bash
echo "Welcome to ipsweep. Currently working only for /24 networks."
if [ "$1" == "" ]
then 
echo "You forgot an IP address! Try again with syntax shown below."
echo "Syntax: ./ipsweep.sh 192.168.0"


else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" |  cut -d " " -f 4 | tr  -d ":" &
done
fi


