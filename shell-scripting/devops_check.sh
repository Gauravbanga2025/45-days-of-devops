#!/bin/bash

#Variables
USER_NAME=$(whoami)
DISK_USED=$(df -h / | tail -1 | awk '{print $5}')
RAM_FREE=$(free -h | grep Mem | awk '{print $4}')
UPTIME=$(uptime -p)
CPU=$(top -bn1 | head -n 3 | grep "Cpu(s)" | awk '{print $2}') # Optimized CPU check


# Print The UserName

echo "Generating Report for $USER_NAME...."

#Forward the Output to a File (The > Symbol) 

echo "------- SYSTEM STATUS REPORT --------" > status_report.txt
echo "Date: $(date)" >> status_report.txt
echo "Available Disk $DISK_USED" >> status_report.txt
echo "Free Ram Available $RAM_FREE" >> status_report.txt
echo "Uptime $UPTIME" >> status_report.txt
echo "CPU Usage $CPU" >> status_report.txt

echo "Report saved to status_report.txt"

