#!/bin/bash
# codigoPostal2.sh - script que pida el número un codigo postal y nos diga a que localidad pertenece
clear
read -n 5 -p "Introduzca los tres primeros digitos del código postal : " CP
echo
case $CP in
	110*)
		echo "Cadiz capital" ;;
	112*)
		echo "Algeciras" ;;
	114*)
		echo "Jerez de la Frontera" ;;
	[1110-1111]*)
		echo "San Fernando" ;;
	1112*)
		echo "Campo Soto" ;;
	*)
		echo "Código no contemplado" ;;
esac


