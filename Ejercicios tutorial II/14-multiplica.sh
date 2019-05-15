#!/bin/bash

# funcion de ayuda
function ayuda() {

cat << DESCRIPCION_AYUDA
SYNOPSIS
	$0 NUMERO_1 NUMERO_2

DESCRIPCION
	Retorna la multiplicacion de NUMERO_1 y NUMERO_2

CÓDIGOS DE RETORNO
	1 Si el número de parámetros es distinto de 2
	2 Si algún parámetro no es un número

DESCRIPCION_AYUDA

}

function comprobarQueNoEsNumero() {
	if [ -n $1 \
		-a "$1" != "0" \
		-a "`echo $1 | awk '{ print $1*1 }'`" != "$1" ]; then
		echo "El parámetro '$1' no es un número"
		ayuda
		exit 2
	fi
}

if [ $# -ne 2 ]; then
	echo "El número de parámetros debe ser igual a 2"
	ayuda
	exit 1
fi

comprobarQueNoEsNumero $1
comprobarQueNoEsNumero $2

echo $1 $2 | awk '{ print $1 * $2 }'
