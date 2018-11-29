#!/bin/bash
DIA=$(date +%d)
if [ $DIA -lt 15 ]; then
	echo "Estamos en la primera quicena del mes"
else
	echo "Estamos en la segunda quincena del mes"
fi
