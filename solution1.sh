#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <logfile>"
	exit 1
fi

#setting the logfile name
LOGFILE=$1

#The command to get the longest running query
grep 'Completed.*in [0-9]*ms' ./logfile.log | awk -F'in ' '{print $2, $0}' | sort -nr | head -1 | cut -d' ' -f2- 