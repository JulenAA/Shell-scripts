#!/bin/bash
# codigoPostal.sh - script que pida 3 primeros números de un codigo postal y nos diga a que localidad pertenece
clear
read -n 3 -p "Introduzca los tres primeros digitos del código postal : " CP
echo
case $CP in
	480)
		echo "Bilbao" ;;
	482)
		echo "Abadiño" ;;
	488)
		echo "Alonsotegi" ;;
	489)
		echo "Barakaldo" ;;
	*)
		echo "Código no contemplado" ;;
esac
