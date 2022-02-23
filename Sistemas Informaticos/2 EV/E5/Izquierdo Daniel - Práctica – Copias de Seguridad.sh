#!/bin/bash

echo Elige ruta de origen
read origen

echo Elige ruta de destino
read destino

echo Elige el tipo de copia que deseas hacer
echo 1- Sincrona
echo 2- Asincrona
read userChoise

if [ $userChoise -eq 1 ];then
    while [ true ];do
        cp $origen/* $destino
        sleep 5
    done
else
    echo Opciones de copia
    echo 1- 30min
    echo 2- 1h
    echo 3- 6h
    echo 4- 24h

    if [ $userChoise -eq 1 ];then
        while [ true ];do
            cp $origen/* $destino
            sleep 1800
        done
    elif [ $userChoise -eq 2 ];then
        while [ true ];do
            cp $origen/* $destino
            sleep 3600
        done
    elif [ $userChoise -eq 3 ];then
        while [ true ];do
        cp $origen/* $destino
        sleep 21600
        done
    elif [ $userChoise -eq 4 ];then
        while [ true ];do
            cp $origen/* $destino
            sleep 86400
        done
    fi
fi