#!/bin/bash

if [ -z "$1" ]; then
	echo "Kullanim: ./bash-example.sh dosya_adi"
	exit 1
fi
NUM=`cat $1 | wc -l`
let VAL=$NUM
echo "$1 dosyasinin satir sayisi: $VAL"
