#!/bin/bash
clear
read -p "Introduce el límite inferior de la suma : " LIM1
read -p "Introduce el límite superior de la suma : " LIM2
if [ $LIM1 -gt $LIM2 ]; then
	echo "El límite superior debe ser mayor o igual que el límite inferior"
else
	SUMA=0
	for NUM in $(seq $LIM1 $LIM2); do
		let SUMA=SUMA+NUM
	done
	echo "Los números del $LIM1 al $LIM2 suman : " $SUMA
fi
