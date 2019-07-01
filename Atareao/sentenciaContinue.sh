#!/bin/bash

i=-1
while :
do
	((i++))
	if [ $i -eq 2 ]; then
		continue
	fi
	echo $i
	if [ $i -gt 5 ]; then
		break;
	fi
done
echo "Finaliza con $i"
