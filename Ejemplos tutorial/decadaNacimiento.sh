#!/bin/bash
# decadaNacimiento.sh - script que nos pide la edad y nos diga la decada de nacimiento
clear
read -p "Introduce tu edad : " EDAD
if [ $EDAD -le 15 ] || [ $EDAD -ge 60 ]; then
	echo "Lo sentimos no tienes la edad adecuada"
else
	let ANIO=$(date +%Y)-EDAD
	CIFRA=$(echo $ANIO | cut -c 3)
	let DECADA=CIFRA*10
	echo "Has nacido en la decada de los $DECADA's"
fi

