#
# Desde Linux
# https://blog.desdelinux.net/scripts-shell-utiles-en-cualquier-programa/
# pedirConfirmacion.sh

#!/bin/bash
while true; do
	echo
	read -p "Esta seguro de hacer lo que sea que vaya a hacer (yes/no): " yn
	case $yn in
		yes ) break;;
		no ) exit;;
		* ) echo "Por favor responda yes o no";;
	esac
done
echo "Si se ejecuta esto es que aceptaste"
