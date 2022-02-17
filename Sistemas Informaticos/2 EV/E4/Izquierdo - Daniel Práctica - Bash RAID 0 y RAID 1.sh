#!/bin/bash

# Crear Carpeta y sus archivos correspondientes
mkdir SCRIPT_RAID
cd SCRIPT_RAID
for ((i=1;i<=50;i++)) do
    touch $i.txt
done

# Leer tipo de RAID
echo Que RAID quieres 0 o 1
read userRaid
while [ $userRaid -gt 1 ];do
    echo Que RAID quieres 0 o 1
    read userRaid
done
echo Has elegido RAID $userRaid

# Leer numero de discos
echo Cuantos discos quieres
read discos
echo Has elegido $discos discos

# Crear tantas carpetas como discos se han elegido
for ((i=1; i<=discos; i++)) do
    mkdir CARPETA$i
done

if [ $userRaid == 0 ];then
    cont2=1
    for ((i=1;i<=50;i++)) do
        if [ $cont2 -lt $discos ];then
            mv $i.txt ./CARPETA$cont2
            cont2=$(($cont2 + 1))
        else
            mv $i.txt ./CARPETA$cont2
            cont2=1
        fi
    done
    echo Done

elif [ $userRaid == 1 ];then
    cont2=1
    for ((i=1;i<=50;i++)) do
        if [ $cont2 -lt $discos ];then
            for ((j=1;j<discos;j++)) do
                cp $i.txt ./CARPETA$j
            done
            mv $i.txt ./CARPETA$j
            cont2=$(($cont2 + 1))
        else
            for ((j=1;j<discos;j++)) do
                cp $i.txt ./CARPETA$j
            done
            mv $i.txt ./CARPETA$j
            cont2=1
        fi
    done
    echo Done
fi