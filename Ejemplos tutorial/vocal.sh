#!/bin/bash
# vocal.sh - script que pida una letra y diga si es una vocal o no
read -n 1 -p "Dime una letra en minúscula : " LETRA ; echo
case $LETRA in
	a|e|i|o|u)
		echo La letra $LETRA es una vocal ;;
	*)
		echo La letra $LETRA es una consonante
esac
