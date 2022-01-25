#!/bin/bash
#Obtener numeros
echo Tienes que adivinar un numero aleatorio del 1 al 10 (tienes 2 intentos)
ale=echo $((RANDOM%11))
echo Escribe un numero
read num1
echo Escribe otro numero
read num2
#Comprobar numeros
if [ $num1 -eq $ale ] || [ $num2 -eq $ale ]; then
    echo El numero era $ale has acertado
else
echo El numero era $ale has fallado
fi
