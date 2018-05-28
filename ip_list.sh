#!/bin/sh
cat ip_to_host.sh | while read LINE
do
host $LINE | awk '{print $5}' | sed 's/.$//'
done
