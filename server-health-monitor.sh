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
##devam edecek...
