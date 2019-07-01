#!/bin/bash

declare -A telefonos
telefonos[Juan]='123'
telefonos[Pedro]='456'
telefonos[Andres]='789'

declare -A telefonos2
telefonos2=([Juan]='123' [Pedro]='456' [Andres]='789')

echo

echo "Accediendo a un elemento:" ${telefonos[Juan]}
echo

echo "Accediendo a todos los valores:" ${telefonos[*]}
# Otra forma ${telefonos[@]}
echo

echo "Accediendo a todas las claves:" ${!telefonos[*]}
echo

echo "Iterando entre los valores"
for i in ${telefonos[@]}
do
	echo $i
done
echo

echo "Iterando entre las claves"
for i in ${!telefonos[@]}
do
	echo "El teléfono de $i es ${telefonos[$i]}"
done
echo

echo "Extrayendo más de un valor:" ${telefonos[@]:1:2}
echo

echo "Número de elementos:" ${#telefonos[@]}
echo

unset telefonos[Juan]
echo "Eliminando una pareja clave-valor:" ${telefonos[*]}
echo

telefonos+=([Ana]=111 [Irene]=333)
echo "Añadiendo nuevos elementos:" ${telefonos[*]}
echo

unset telefonos
echo "Eliminando el diccionario:" ${telefonos[*]}
echo
