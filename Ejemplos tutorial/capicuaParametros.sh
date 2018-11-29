#!/bin/bash
# capicuaParametro.sh - script al que pasamos un número de tres cifras como parámetro e indica si es capicúa o no
clear
NUMERO=$1
if [ $# -ne 1 ]; then
	echo "No has introducido el número de parámetro correcto"
else
	if [ $NUMERO -lt 100 ] || [ $NUMERO -gt 999 ]; then
		echo "Lo siento, no has introducido un número de tres cifras"
	else
		PRIMERA_CIFRA=$(echo $NUMERO | cut -c 1)
		TERCERA_CIFRA=$(echo $NUMERO | cut -c 3)
		if [ $PRIMERA_CIFRA = $TERCERA_CIFRA ]; then
			echo "El número $NUMERO es capicúa"
		else
			echo "El número $NUMERO no es capicúa"
		fi
	fi
fi
