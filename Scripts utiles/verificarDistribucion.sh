#
# Tormenta de bits
# http://www.tormentadebits.com/2013/10/rutinas-utiles-para-scripts-bash-I.html
#

#!/bin/bash
echo " --> Identificar distribución de Linux"
if [ -f /etc/fedora-release ]; then
    # -- Si es fedora.
    echo "Estamos en una distribucion Fedora!"

elif [ -f /etc/SuSE-release ]; then
    # -- Si es openSUSE.
    echo "Estamos en una distribucion basada en SUSE Linux!"
elif [ -f /etc/debian_version ]; then
    # -- Si es Debian.
    echo "Estamos en una distribucion basada en Debian Linux!"
fi
