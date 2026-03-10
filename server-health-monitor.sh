#!/bin/bash


top -b -n 1 | tail -n +8 |awk '
{
    user=$2
    cpu=$10
    cpu_usage[user]+=cpu
    total+=cpu
}
END {
    print "------------------------"
    printf "TOTAL CPU USAGE   : %.1f%%\n", total
    print "------------------------"
    for (u in cpu_usage)
        printf "%-10s : %.1f%%\n", u, cpu_usage[u]
}
'

free | head -2 | tail -1 | awk '{
total=$2
avail=$7
print "------------------------"
printf "TOTAL RAM USAGE : %.2f%%\n", (total-avail)/total *100
print "------------------------"
}'

echo "------------------------"
echo "TOTAL DISK USAGE"
echo "------------------------"
df | awk '$1 ~/^\/dev\//{ #burada regex kullanimi var. daha detayli bakmak lazim.
printf "%-10s : %s used (%s free)\n", $6, $5, $4
}'

echo "------------------------"
echo "UPTIME : " $(uptime)
echo "------------------------"

echo "Written by myrathEfe"
