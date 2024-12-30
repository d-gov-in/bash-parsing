#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <logfile>"
	exit 1
fi

#setting the logfile name
LOGFILE=$1

#The command to get the unique endpoints
grep -o '\(POST\|GET\) "[^?"]*' ./logfile.log | sed -E 's/"([^?"]*).*/\1/' | sort | uniq -c