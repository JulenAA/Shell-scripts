#!/bin/bash

# función de ayuda
function ayuda() {

cat << DESCRIPCION_AYUDA
SYNOPSYS
	$0 NOMBRE_USUARIO

DESCRIPCION
	Devuelve:
		SI si NOMBRE_USUARIO coincide con alún usuario conectado o
		NO si NOMBRE_USUARIO no coincide con ningún usuario conectado

CÓDIGOS DE RETORNO
	1 Si el número de parámetros es distinto de 1

DESCRIPCION_AYUDA

}

# Si número de parámetros menor o igual que 0
if [ $# -ne 1 ]; then
	echo "El número de parámetros debe de ser igual a 1"
	ayuda
	exit 1
fi

ESTA_CONECTADO=$(who | grep $1)

if [ -z "$ESTA_CONECTADO" ]; then
	echo "NO"
else
	echo "SI"

fi
