#!/bin/bash

i=10
until [ $i -lt 0 ]
do
	echo $i
	((i--))
done

echo

i=10
while [ $i -gt -1 ]
do
	echo $i
	((i--))
done
