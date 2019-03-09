#!/bin/bash

TIME_LIMIT=10
INTERVAL=1

echo 
echo "Hit Ctrl-C to exit before $TIME_LIMIT"
echo 

while [ "$SECONDS" -le "$TIME_LIMIT" ]
do 
	if [ "$SECONDS" -le 1  ]
	then
		units=second
	else
		units=seconds
	fi

	echo "This script has been running $SECONDS $units."
	sleep $INTERVAL
done

echo -e  "\a" #Beep !

exit 0
