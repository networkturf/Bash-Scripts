#!/bin/sh
cat hostnames.txt | while read LINE   #This runs the cat command and iterates over each hostname in the fiel
do
host $LINE | awk '{print $4}'   #The host command runs against each hostname and prints the corresponding IP address
done

