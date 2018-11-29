#!/bin/bash
clear
SUMA=0
for NUM in $(seq 1 100); do
	let SUMA=SUMA+NUM
done
echo "Los números del 1 al 100 suman : " $SUMA
