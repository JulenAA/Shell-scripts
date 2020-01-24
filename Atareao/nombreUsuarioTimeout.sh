#!/bin/bash

read -t 2 -p "Dime tu nombre: " nombre
if [ -z $nombre ]
then
	echo
	echo "No me has dicho tu nombre en menos de dos segundos"
else
	echo "Hola $nombre"
fi
