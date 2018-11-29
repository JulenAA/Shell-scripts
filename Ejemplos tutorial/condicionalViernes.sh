#!/bin/bash

DIA=$(date +%A)
if [ $DIA = "viernes" ]; then
	echo "Bravo, por fin es viernes"
fi

if [ $DIA != "viernes" ]; then
	echo "Vaya, todavia no es viernes"
fi

