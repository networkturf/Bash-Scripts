#!/bin/sh
cat ip_list.txt | while read LINE   #This iterates over the file ip_ist.xtx which should contain IP addresses line by line
do
host $LINE | awk '{print $5}' | sed 's/.$//'   # The 'host' command runs against each IP address  
done

