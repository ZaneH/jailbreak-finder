#!/bin/bash

clear

wlanmax=$(ifconfig wlan0 | grep "inet addr:" | cut -d: -f2 | awk '{print $1};' | awk -F. '{print $1"."$2"."$3".1/24"};')
echo "Grabbing inet address..."
echo "Grabbing gatemask..."
nmap -sP $wlanmax | grep "Nmap scan report for" | awk '{system("ssh -t -t -o ConnectTimeout=5 root@"$5)};'
echo "Done"
