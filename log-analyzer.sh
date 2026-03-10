#!/bin/bash

SYSLOG="/var/log/syslog"
AUTHLOG="/var/log/auth.log"


echo "===================SYSTEM LOG REPORT==================="
echo

echo "Error count : $(grep -i error $SYSLOG | wc -l)"

echo
echo "Warning count : $(grep -i warning $SYSLOG | wc -l)"

echo
echo "Top attacking IPs : $(grep "Failed password" $AUTHLOG | awk '{print $11}' | sort | uniq -c | sort -nr | head)"


echo
echo "Top error services :" 
grep -i error $SYSLOG | awk '{print $3}' | sort | uniq -c | sort -nr | head
