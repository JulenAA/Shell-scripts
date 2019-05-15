#
# Tormenta de bits
# http://www.tormentadebits.com/2013/10/rutinas-utiles-para-scripts-bash-I.html
#

#!/bin/bash
# -- Definición de una variable
DIRECTORIO=/backups/ntop

# -- Creando directorios necesarios
echo
echo " --> Preparando directorio $DIRECTORIO"
if [ ! -d $DIRECTORIO ]; then
	mkdir -vp $DIRECTORIO
fi

