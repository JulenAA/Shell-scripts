#!/bin/bash
function doble {
	echo "Voy a doblar el valor del numero"
	let NUMERO=NUMERO*2
}
NUMERO=3
echo '$NUMERO vale: ' $NUMERO
doble				#llamamos a la funcion
echo '$NUMERO vale: ' $NUMERO
