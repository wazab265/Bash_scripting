#!/bin/bash
#Simple pingsweep script

read -p "Enter Subnet: " SUBNET

for IP in $(seq 100 254); do
	#the -c param allows us to limit the amt of pings done
	ping -c 1 $SUBNET.$IP
done