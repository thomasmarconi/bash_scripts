#!/bin/bash

if [[ -z "$1" || "$1" == "--help" || "$1" == "-h" ]]; then
	echo "Usage: ./countdown.sh <YYYY-MM-dd>"
	exit 1
fi

while true; do
date_diff_seconds=$(( ($(date -d "$1 00:00:00" +%s) - $(date +%s)) ))

days=$(( date_diff_seconds / (60*60*24)))  
hours=$(( date_diff_seconds % (60*60*24) / (60*60) + 1))
minutes=$(( date_diff_seconds % (60*60) / (60) ))
seconds=$(( date_diff_seconds % (60) ))

echo $days days, $hours hours, $minutes minutes, $seconds seconds left until $(date -d "$1")

sleep 1

done
