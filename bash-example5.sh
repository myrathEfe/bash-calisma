#!/bin/bash

if [ -d "$1" ]; then
	mkdir -p "$1/data"
elif [ -f "$1" ]; then
	mv "$1" myFile
	mkdir -p "$1/data"
elif [ -h "$1" ]; then
	mv "$1" myLink
	mkdir -p "$1/data"
else
	mkdir -p "$1/data"
fi


##BU KODUN BOZUK OLDUGUNU DUSUNUYORUM.
