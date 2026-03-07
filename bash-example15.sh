#!/bin/bash

case "$1" in
	"" )
	echo "Usage: SCRIPT <filename>"
	exit
	;;

	* )
	FILENAME=$1
	;;

esac
