#!/bin/bash
# mayorEdad.sh
function mayor_edad {
	if [ $1 -ge 18 ]; then
		echo Sí, es mayor de edad
	else
		echo No, es menor de edad
	fi
}
read -p "Dime la edad del que quiere entrar : " EDAD
echo Voy a comprobar si puede entrar o no
mayor_edad $EDAD
