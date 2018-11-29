#!/bin/bash
# alturaPersonas.sh - script que nos pide la altura de tres personas y nos diga la mayor
clear
read -p "Introduce la altura de la persona nº1 : " ALTURA1
read -p "Introduce la altura de la persona nº2 : " ALTURA2
read -p "Introduce la altura de la persona nº3 : " ALTURA3

if [ $ALTURA1 -gt $ALTURA2 ] && [ $ALTURA1 -gt $ALTURA3 ]; then
	echo "La mayor altura encontrada es la de la persona nº1 ($ALTURA1 centímetros)"
elif [ $ALTURA2 -gt $ALTURA3 ]; then
	echo "La mayor altura encontrada es la de la persona nº2 ($ALTURA2 centímetros)"
else
	echo "La mayor altura encontrada es la de la persona nº3 ($ALTURA3 centímetros)"
fi
