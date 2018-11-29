#!/bin/bash
# empiezaJMayuscula - script que nos pide un nombre pe indica si empieza por J mayúscula
clear
read -p "Introduzca un nombre : " NOMBRE
LETRA=${NOMBRE:0:1}
if [ $LETRA = "J" ]; then
	echo "La primera letra de $NOMBRE es la J"
else
	echo "La primera letra de $NOMBRE no es la J"
fi

