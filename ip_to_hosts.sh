#!/bin/sh
cat ip_list.sh | while read LINE
do
host $LINE | awk '{print $5}' | sed 's/.$//'
done

