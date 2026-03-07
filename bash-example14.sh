#!/bin/bash

ARG=$1

case "$ARG" in


	"Hello" )
	echo "You too, thank you"
	;;

	"Bye" )
	echo "See you next time"
	exit
	;;

	* )
	echo "Just say Hello or Bye (: "
	;;

esac


