#!/bin/bash

for ((i=1;i<$1;i++))
do
	if((i%2))
	then
		echo $i
	fi
done
