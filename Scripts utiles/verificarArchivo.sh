#
# Tormenta de bits
# http://www.tormentadebits.com/2013/10/rutinas-utiles-para-scripts-bash-I.html
#

#!/bin/bash
echo "Verificando la existencia de un archivo"
if [ -f /etc/hosts ]; then
	# Si existe el archivo
	echo "El archivo existe"
else
	# Si no existe el archivo
	echo "El archivo no existe"
fi

