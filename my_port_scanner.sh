#! /bin/bash
# This script is used to find hosts with open ports using input

echo "Enter target IP address: "
read TargetIP

echo "Enter the last octet of the last IP address: "
read LastOctetIP

echo "Specify the port: "
read port

nmap -sT $TargetIP-$LastOctetIP -p $port > /dev/null -oG MyPortScanner

cat MyPortScanner | grep open > MyPortScanner2

cat MyPortScanner2
