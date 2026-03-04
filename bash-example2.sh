#!/bin/bash

if [ -z $1 ]; then
	echo "Dogru kullanim : ./deneme.sh dosya_adi"
	exit 1;
fi

NUM=$(wc -l < "$1")
echo "$1 dosyasinin satir sayisi : $NUM"
