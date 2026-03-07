#!/bin/bash


function calc_length {
	FILE=$1
	LENGTH=$2
	echo "File" "$FILE" "length is" "$LENGTH"
}


LISTEF=`ls -l | grep '^-' | awk '{printf $NF" "}'`

for FILE in $LISTEF
do
	FLENGTH=`cat $FILE | wc -l`
	calc_length $FILE $FLENGTH
done
