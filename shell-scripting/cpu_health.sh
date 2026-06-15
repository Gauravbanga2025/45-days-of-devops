MAX_LIMIT=2
CURRENT_USAGE=0.1

while (( $CURRENT_USAGE <=  $MAX_LIMIT + 0.3 )); do

  if [ $CURRENT_USAGE -lt $MAX_LIMIT ]; then
    echo " CPU Usage is Safe and Under Max Limit ($MAX_LIMIT) "

  elif [ $CURRENT_USAGE -eq $MAX_LIMIT ]; then
    echo " CPU Usage is Sage and Equals to Maximum Limit ($MAX_LIMIT) "

  else  
    echo "Critical Alert CPU Usage Crossed The Maximum Limit So Stop Some Process" 

  fi
   
  ((CURRENT_USAGE++))

done
