#!/bin/bash
# numerosDoble2.sh - script que pide números y muestra el doble de dichos números
# el script continua ejecutándose mientras no se introduzca un 0.
clear
read -p "Introduce un número (0 para salir) : " NUMERO
while [ $NUMERO -ne 0 ]; do
	echo "El doble de $NUMERO es $(($NUMERO *2))"
	read -p "Introduce un número (0 para salir) : " NUMERO
done
