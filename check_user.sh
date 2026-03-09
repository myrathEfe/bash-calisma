#!/bin/bash

if [-z "$1"]; then
	echo "Kullanim : ./check_user.sh <kullanici-adi>"
	exit 1
fi

USERNAME=$1

if id "$USERNAME" &>/dev/null; then
	echo "Kullanici adi mevcut : $USERNAME"
else
	echo "Kullanici bulunamadi : $USERNAME"
fi
