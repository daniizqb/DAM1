#!/bin/bash
veces=5
cont=0
echo Pulsa la tecla a $veces veces seguidas para comenzar el programa

while [ $cont -lt $veces ];do
    read userChar
    if [ "$userChar" != "a" ];then
        cont=0
        echo Tecla incorrecta, contador reseteado
    else
        cont=$(($cont+1))
        if [ $cont -lt 5 ];then
            echo Quedan $(($veces-$cont)) veces
        fi
    fi
done

echo Escribe el primer numero del rango
read min

echo Escribe el segundo numero del rango
read max
while [ $max -le $min ];do
    echo Escribe el segundo numero del rango
    read max
done

echo Los numeros primos entre el numero $min y el numero $max son

cont=0
for ((i=min; i<=max; i++)) do

    cont=0
    for ((j=1; j<=i; j++)) do
        div=$(($i % $j))
        if [ $div -eq 0 ];then
            cont=$(($cont + 1))
        fi
    done

    if [ $cont -eq 2 ];then
        echo $i
        numeroPrimos=$(($numeroPrimos+1))
    fi
done

echo El total de primos es de $numeroPrimos