#!/bin/bash

# función de ayuda
function ayuda() {

cat << DESCRIPCION_AYUDA
SYNOPSYS
	$0 NOMBRE_1 [NOMBRE_2] ... [NOMBRE_N]

DESCRIPCION
	Muestra "Hola NOMBRE_1, NOMBRE_2, ... NOMBRE_N!" por pantalla

CÓDIGOS DE RETORNO
	1 Si el número de parámetros es menor que 1
	2 Si el usuario no está en el sistema

DESCRIPCION_AYUDA

}

# Si número de parámetros menor o igual que 0
if [ $# -le 0 ]; then
	echo "Hay que introducir al menos un parámetro"
	ayuda
	exit 1
fi

MENSAJE="Hola"
PRIMERO=1

# mientras haya parámetros
while [ -n "$1" ]; do

	ESTA_USUARIO=`./10-usuario-sistema.sh $1`

	if [ "$ESTA_USUARIO" == "NO" ]; then
		echo "El usuario $1 no está en el sistema"
		ayuda
		exit 2
	fi

	if [ $PRIMERO -eq 1 ]; then
		MENSAJE="$MENSAJE $1"
		PRIMERO=0
	else
		MENSAJE="$MENSAJE, $1"
	fi

	# pasamos al siguiente parámetro
	shift
done

# mostramos la salida por pantalla
echo $MENSAJE"!"
