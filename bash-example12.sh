#!/bin/bash

let A=10

until [ $A -lt 1 ]
do
	echo "A= "$A
	let "A-=1"
done
