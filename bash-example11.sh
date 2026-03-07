#!/bin/bash

STATUS=`ps auwx | grep 'MyCmd'`
while [ -n "$STATUS" ]
do
	sleep 60
	STATUS=`ps auwx | grep 'MyCmd'`
done
