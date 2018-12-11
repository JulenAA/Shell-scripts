#
# Tormenta de bits
# http://www.tormentadebits.com/2013/10/rutinas-utiles-para-scripts-bash-I.html
#

#!/bin/bash
# -- Se verifica que el OS sea un linux.
echo -n "Comprobando sistema operativo: "
ESTE_OS=`uname`
if [ $ESTE_OS != 'Linux' ]; then
    echo "Error"
    echo "Sistema operativo no soportado!"
    exit
else 
    echo "Sistema operativo soportado"
fi
