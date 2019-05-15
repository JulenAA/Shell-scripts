#
# Tormenta de bits
# http://www.tormentadebits.com/2013/10/rutinas-utiles-para-scripts-bash-I.html
#

#!/bin/bash
# -- Se verifica la existencia de la ruta al JDK
echo -n "Comprobando path del JDK"
if [ -d $JRE_PATH_SUNJDK ]; then
    JRE_PATH=$JRE_PATH_SUNJDK/jre
    echo " OK -> "$JRE_PATH
elif [ -d $JRE_PATH_OPENJDK ]; then
    JRE_PATH=$JRE_PATH_OPENJDK/jre
    echo " OK -> "$JRE_PATH
else
    echo " Error -> No hay ningún JDK instalado!"
    echo
    exit
fi
