#!/bin/bash

echo Nombre Carpeta Raiz
read raiz

mkdir $raiz
cd $raiz

echo Cuantas carpetas quiere crear
read numCarpetas

for ((i=1;i<=numCarpetas;i++)) do
    echo Nombre de la carpetas
    read nombre
    mkdir $nombre
    cd $nombre
    echo Numero de archivos a crear
    read numArchivos
    for ((i=1;i<=numArchivos;i++)) do
        echo Nombre del archivo
        read nombre
        echo Extension
        read extension
        touch $nombre.$extension
    done
    cd ..
done

tree