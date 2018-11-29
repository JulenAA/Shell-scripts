#!/bin/bash
# numerosDoble.sh - script que pide números y muestra el doble de dichos números
# el script continua ejecutándose mientras no se introduzca un 0.
clear
for (( ; ; )); do
	read -p "Introduce un número (0 para salir) : " NUMERO
	if [ $NUMERO -eq 0 ]; then
		break;
	else
		echo "..............el doble es $[$NUMERO *2]"
	fi
done
echo "Hemos salido del bucle y se acabó el programa"
