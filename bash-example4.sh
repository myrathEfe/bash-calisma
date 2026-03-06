#!/bin/bash

NUM=$(wc -l < "$1")

if [ $NUM -ge 50 ]; then
	echo "$1 Dosyası 50 satir veya daha uzun!"
fi
