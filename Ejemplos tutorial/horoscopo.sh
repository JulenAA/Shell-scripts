#!/bin/bash
# horoscopo.sh - script que nos pida el año de nacimiento y nos diga el animal del horoscopo chino
clear
read -n 4 -p "Introduce tu año de nacimiento : " ANYO ; echo
let RESTO=ANYO%12
case $RESTO in
	0)
		echo "Si naciste en $ANYO te corresponde el Mono según el horóscopo chino" ;;
	1)
		echo "Si naciste en $ANYO te corresponde el Gallo según el horóscopo chino" ;;
	2)
		echo "Si naciste en $ANYO te corresponde el Perro según el horóscopo chino" ;;
	3)
		echo "Si naciste en $ANYO te corresponde el Cerdo según el horóscopo chino" ;;
	4)
		echo "Si naciste en $ANYO te corresponde la Rata según el horóscopo chino" ;;
	5)
		echo "Si naciste en $ANYO te corresponde el Buey según el horóscopo chino" ;;
	6)
		echo "Si naciste en $ANYO te corresponde el Tigre según el horóscopo chino" ;;
	7)
		echo "Si naciste en $ANYO te corresponde el Conejo según el horóscopo chino" ;;
	8)
		echo "Si naciste en $ANYO te corresponde el Dragón según el horóscopo chino" ;;
	9)
		echo "Si naciste en $ANYO te corresponde la Serpiente según el horóscopo chino" ;;
	10)
		echo "Si naciste en $ANYO te corresponde el Caballo según el horóscopo chino" ;;
	11)
		echo "Si naciste en $ANYO te corresponde la Cabra según el horóscopo chino" ;;
esac
