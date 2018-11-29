#!/bin/bash
# juegoAdivinaNumero.sh - script que permite jugar a adivinar un número en varios intentos
#			y llevando un control de los tres mejores
clear
# Si pasamos como parámtro X borramos el fichero record
if [ $# -ne 0 ]; then	# para controlar que se han pasado parámetros
	if [ $1 = X ]; then
		echo "Borrando fichero de records"
		rm record.txt
	fi
fi
# Ahora vamos a leer el fichero de records para imprimirlo
#
if [ -f record.txt ]; then
	POS=0
	for CAMPEON in $(cat record.txt); do
		let POS=POS+1
		NOMBRE=$(echo $CAMPEON | cut -d: -f2)
		NUMERO=$(echo $CAMPEON | cut -d: -f1)
		echo "En posición $POS está $NOMBRE con $NUMERO intentos"
	done
else
	echo "**************************************************************"
	echo "No hay ningún intento record todavía. Aprovecha la oportunidad"
	echo "**************************************************************"
fi
#
# Comenzamos el juego en sí
#
CONTADOR=1
let MINUMERO=RANDOM	# $RANDOM nos da un número aleatorio
# MINUMERO=3	# Para hacer pruebas, descomentar esta línea y comentar la anterior
echo ''; echo ''
echo "**************************************************************"
read -p "Dime tu nombre : " NOMBRE
echo ''; echo ''
read -p "Llevas $CONTADOR intentos. Dime un número: " NUMERO
#
#
until [ $NUMERO -eq $MINUMERO ]; do
	if [ $NUMERO -gt $MINUMERO ]; then
		echo "El número que has metido es mayor"
	else
		echo "El número que has metido es menor"
	fi
	let CONTADOR=CONTADOR+1
	read -p "Llevas $CONTADOR intentos. Dime un número: " NUMERO
done
#
echo Por fin acertaste
# Grabamos el record en el efichero (primero los intentos y luego el nombre)
echo $CONTADOR:$NOMBRE >> record.txt
# Ordenamos para dejar arriba los que lo han hecho en menos intentos
# y nos quedamos con las 3 primeras líneas
sort record.txt -g | head -3 > recordTemp.txt
cp recordTemp.txt record.txt


