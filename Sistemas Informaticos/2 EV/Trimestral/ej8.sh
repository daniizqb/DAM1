#!/bin/bash
echo Numero de discos
read discos
while [ $(($discos % 4)) -ne 0 ];do
        echo Numero de discos
        read discos
    done

for ((i=1;i<=discos;i++)) do
    mkdir CARPETA$i
done

for ((i=1;i<=30;i++)) do
    touch $i.txt
done

while [ true ];do
    cont2=1
    for ((i=1;i<=30;i++)) do
        if [ $cont2 -lt $discos ];then
            cp $i.txt ./CARPETA$cont2
            cont2=$(($cont2 + 2))
        else
            cont2=1
            cp $i.txt ./CARPETA$cont2
            cont2=$(($cont2 + 2))
        fi
    done

    cont2=2
    for ((i=1;i<=30;i++)) do
        if [ $cont2 -le $discos ];then
            cp $i.txt ./CARPETA$cont2
            cont2=$(($cont2 + 2))
        else
            cont2=2
            cp $i.txt ./CARPETA$cont2
            cont2=$(($cont2 + 2))
        fi
    done
    sleep 1800
done