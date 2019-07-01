#!/bin/bash

if [[ $1 -lt 10 ]]
then
	echo "Unidades"
elif [[ $1 -lt 100 ]]
then
	echo "Decenas"
elif [[ $1 -lt 1000 ]]
then
	echo "Centenas"
elif [[ $1 -lt 10000 ]]
then
	echo "Millares"
else
	echo "Un número muy grande"
fi
