#!/bin/bash
function saludo {
	local NOMBRE="Julen"
	echo "Hola señor $NOMBRE, encantado de conocerle"
}
NOMBRE="Miriam"
saludo
echo "En el script principal, mi nombre es $NOMBRE"


