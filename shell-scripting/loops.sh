#!/bin/bash


for server in  webserver dbserver proxy01; do
     echo "Checking deployment status for: $server"

done

for item in item1 item2 item3; do
    echo "Processing: $item"

done



a=10
b=1

while (( b <= a+1)); do

 if [ $b -lt $a ]; then
    echo "Current B=$b | A ($a) is greater than B ($b)"

 elif [ $b -eq $a ]; then 
    echo "Current B=$b | B is equals to A ($a)"

 else
     echo "Current B=$b | B is greater than A ($a)"

 fi

   ((b++))

done
