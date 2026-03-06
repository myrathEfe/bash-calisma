#!/bin/bash

if [ "$1" != "$2" ]; then
	C=`echo $1 | sed 's;C;B;1'`
	echo $C
else
	echo $1" "$2 | awk '{print $NF}'
fi
