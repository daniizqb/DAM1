#!/bin/bash
echo Se va a comprobar si el numero es par o impar
echo Escribe un numero mayor que 17 y menor que 34
read num1
if [ $num1 -gt 34 ] && [ $num1 -lt 17 ]; then
echo El numero no es valido
exit
fi
if [ $(($numero % 2)) -eq 0 ]; then
echo El numero es par
else
echo El numero es impar
fi