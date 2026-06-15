#!/bin/bash 
#Shebang Declaration


Name="Gaurav"
Date=$(date +%F)
echo "Hello $Name today is $Date"


echo "------System Report--------"
echo "My Name is $(whoami)"
echo "My Disk Storage is $(df -h / | tail -1 | awk '{print $5}')"

