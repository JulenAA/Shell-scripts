#!/bin/bash
# multiplo10.sh - script que nos pide un número e indica si es multiplo de 10 o no
clear
read -p "Introduzca un número : " NUMERO
let RESTO=NUMERO%10
if [ $RESTO -eq 0 ]; then
	echo "El número $NUMERO es múltiplo de 10"
else
	echo "El número $NUMERO no es múltiplo de 10"
fi
