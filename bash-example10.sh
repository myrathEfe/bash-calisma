#!/bin/bash

let A=50

while [ $A -ge 1 ]
do
	echo "A= "$A
	let "A-=1"
done
