#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <logfile>"
	exit 1
fi

#setting the logfile name
FILE=$1

#The command to get the longest running query
sed -n 's/.*ted.*in \([0-9]*ms\).*/\1/p' "$FILE"|sort -nr|head -1|xargs -I{} grep -B1 {} "$FILE" 





