#!/bin/bash

distros=(Ubuntu Linux\ Mint Deepin Manjaro Elementary)
clear
echo "Primer elemento:" ${distros[0]}
echo

echo "Todos los elementos:" ${distros[@]}
echo

echo "Todos los elementos separados"
for i in "${distros[@]}"
do
	echo $i
done
echo

echo "Accediendo a dos posiciones:" ${distros[@]:1:2}
echo

echo "Sustitución un elemento:" ${distros[@]/Linux \Mint/Debian}
echo

echo "Número de elementos array:" ${#distros[@]}
echo

echo "Longitud primer elemento:" ${#distros[0]}
echo

distros=(Arch "${distros[@]}")
echo "Añadiendo un elemento:" ${distros[@]}
echo

unset distros[1]
echo "Eliminado un elemento:" ${distros[@]}
echo

distros=(${distros[@]/Deepin/})
echo "Otra forma de eliminar un elemento:" ${distros[@]}
echo

distros1=(Ubuntu Knoppix PureOS)
distros2=(Mandrake CentOS Fedora)
distros3=(${distros1[@]} ${distros2[@]})
echo "Unir dos arrays:" ${distros3[@]}
echo

nuevo=(${distros3[@]::2})
echo "Array con los dos primeros elementos:" ${nuevo[@]}
echo

nuevo=(${distros[@]:$((${#distros[@]}-2))})
echo "Array con los dos últimos elementos:" ${nuevo[@]}
echo

unset nuevo
echo "Eliminar un array:" ${nuevo[@]}
echo
