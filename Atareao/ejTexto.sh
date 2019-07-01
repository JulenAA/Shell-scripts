#!/bin/bash
cadena="Esto es una cadena de texto"
echo $cadena
echo ${cadena:1:2}
echo ${cadena/de/a}
echo ${cadena//de}
echo ${cadena//de/a}
