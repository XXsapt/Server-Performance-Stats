#!/bin/bash

echo "========================="
echo " SERVER PERFORMANCE STATS"
echo "========================="

echo -e "\n--- OS Version ---"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'

echo -e "\n--- Uptime & Load Average ---"
uptime

echo -e "\n--- Logged In Users ---"
who


echo -e "\n--- Total CPU Usage ---"

top -bn1 | grep "Cpu(s)" | \
awk '{print "CPU Usage: " 100 - $8 "%"}' 

echo -e "\n--- Memory Usage ---"
free -h | awk '
NR==2 {
  used=$3
  free=$4
  total=$2
  percent=($3/$2)*100
  printf "Used: %s | Free: %s | Total: %s | Usage: %.2f%%\n", used, free, total, percent
}'


echo -e "\n--- Disk Usage ---"
df -h / | awk 'NR==2 {
  print "Used: " $3 " | Free: " $4 " | Total: " $2 " | Usage: " $5
}'

echo -e "\n--- Top 5 Processes by CPU Usage ---"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6



echo -e "\n--- Top 5 Processes by Memory Usage ---"
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6



echo -e "\n--- Failed Login Attempts ---"

journalctl _COMM=sshd | grep "Failed password" | tail -n 5

echo -e "\nDone. Server statistics are displayed.."
