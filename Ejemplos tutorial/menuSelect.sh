#!/bin/bash
# menuSelect.sh
clear
select RESP in Chiste Refran Poema Salir; do
	case $RESP in
		Chiste)
			echo "Soy muy indeciso... o no" ;;
		Refran)
			echo "A mal tiempo, buena cara" ;;
		Poema)
			echo "¿Qué es poesía? ¿Y tú me lo preguntas?..." ;;
		Salir)
			break
	esac
done
