#!/bin/bash
# numeros1a20Until.sh
clear
NUMERO=1
until [ $NUMERO -gt 20 ]; do
	echo "Número vale : " $NUMERO
	let NUMERO=NUMERO+1
done
