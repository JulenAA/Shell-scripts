#!/bin/bash

read -n 7 -p "Fruta de siete letras: " fruta
if [ "$fruta" == "platano" ]
then
	echo
	echo Correcto
else
	echo
	echo "Error, la respuesta correcta era plátano"
fi
