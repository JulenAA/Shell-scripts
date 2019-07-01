#!/bin/bash

i=0
while :
do
	echo $i
	((i++))
	if [ $i -gt 5 ]
	then
		break;
	fi
done
echo "Finaliza con $i"
