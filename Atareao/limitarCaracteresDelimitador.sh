#!/bin/bash

read -d o -p "Fruta de siete letras: " fruta
if [ "$fruta" == "plátan" ]
then
	echo
	echo Correcto
else
	echo
	echo "Error, la respuesta correcta era plátano"
fi
