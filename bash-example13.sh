#!/bin/bash

STATUS=`ps auwx | grep 'MyCmd'`
until [ -z "$STATUS" ]
do
	sleep 60
	STATUS=`ps auwx | grep 'MyCmd'`
done
