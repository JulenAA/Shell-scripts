#!/bin/bash
# numeroDiasMes.sh - script que pide el nombre de un mes y nos dice el número de día que tiene
clear
read -p "Introduce el nombre de un mes  : " MES
MES=${MES,,}	# lower-case conversion
if [ $MES = "enero" ] || [ $MES = "marzo" ] || [ $MES = "mayo" ] || [ $MES = "julio" ] || [ $MES = "agosto" ] || [ $MES = "octubre" ] || [ $MES = "diciembre" ]; then
	echo "El mes $MES tiene 31 días"
elif [ $MES = "abril" ] || [ $MES = "junio" ] || [ $MES = "septiembre" ] || [ $MES = "noviembre" ]; then
	echo "El mes $MES tiene 30 días"
elif [ $MES = "febrero" ]; then
	echo "El mes $MES tiene 28 días"
else
	echo "$MES -> Has introducido un mes no válido"
fi
