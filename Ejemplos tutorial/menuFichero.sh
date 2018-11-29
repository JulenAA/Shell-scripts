#!/bin/bash
# menuFichero.sh
clear
select FICHERO in $(ls); do
	echo Has selecionado el fichero $FICHERO
	# Ahora podriamos borrarlo, copiarlo, visualizarlo, etc.
done
