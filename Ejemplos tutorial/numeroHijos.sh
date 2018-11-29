#!/bin/bash
NUMERO_HIJOS=3
if [ $NUMERO_HIJOS -eq 1 ]; then
	echo "Tienes un unico hijo"
elif [ $NUMERO_HIJOS -eq 2 ]; then
	echo "Tienes dos hijos"
elif [ $NUMERO_HIJOS -ge 3 ]; then
	echo "3 o más hijos, eso es familia numerosa"
else
	echo "No tienes ningún hijo"
fi


