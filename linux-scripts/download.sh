#!/bin/bash

MyIP=$(curl http://api.ipify.org/?format=text)
if [ "$MyIP" != "77.68.152.53" ]
	then
		echo "IPSEC VPN is Running -  " $MyIP
	else
	        echo "IPSEC VPN is Not Running - " $MyIP
	fi
exit 0
