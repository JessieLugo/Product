#!/bin/bash

fecha_hora=$(date +"%Y/%m/%d %H:%M:%S")
hostname=$(hostname)

cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
ram=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')
disk=$(df -h | awk '$NF=="/"{print "%s", $5}')
line="$fecha_hora - Hostname: $hostname - CPU $cpu - RAM: $ram - Disk: $disk"

echo "$line" >> Status.txt
