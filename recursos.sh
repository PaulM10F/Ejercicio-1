#!/bin/bash

N=5

get_stats() {
    mem_usage=$(free -k | awk 'NR==2{print $3}')

    cpu_usage=$(top -b -n 1 | awk '/%Cpu/{print $2}')

    echo "$(date +%Y-%m-%d\ %H:%M:%S),$mem_usage,$cpu_usage"
    }

while true; do
    get_stats >> recursos.csv
    sleep $N
done &
