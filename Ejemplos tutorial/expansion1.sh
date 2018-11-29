#!/bin/bash
echo
echo pwd
echo $(pwd)
echo
echo "Tenemos $(find ./ -iname "*.sh" | wc -l) scripts en el directorio"
echo "Tenemos `find ./ -iname "*.sh" | wc -l` scripts en el directorio"
echo
