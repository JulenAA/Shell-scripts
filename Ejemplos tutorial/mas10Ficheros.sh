#!/bin/bash
#mas10Ficheros.sh - script que nos diga si en el directorio actual hay más de 10 ficheros o no
clear
NUM_FICHEROS=$(find . -maxdepth 1 -type f | wc -l) # cuenta solamente los ficheros
if [ $NUM_FICHEROS -gt 10 ]; then
	echo "El directorio actual tiene más de 10 ficheros ($NUM_FICHEROS)"
else
	echo "El directorio actual no tiene más de 10 ficheros ($NUM_FICHEROS)"
fi

