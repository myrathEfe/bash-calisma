#!/bin/bash

LIST=`ls -l | grep '^-' | awk '{printf $NF " "}'`

for LI in $LIST
do
	NLIGN=`cat $LI | wc -l`
	echo "File= $LI, Number of ligne(s)= "$NLIGN
done
