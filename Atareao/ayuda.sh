#!/bin/bash

for arg in "$@"
do
	if [ "$arg" == "--help" ] || [ "$arg" == "-h" ]
	then
		echo "Help argument detected."
	fi
done
