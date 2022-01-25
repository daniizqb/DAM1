#!/bin/bash
echo se va a crear una carpeta
echo Escribe el nombre de la carpeta
read nc
echo Escribe la ruta en la que quieres crear la carpeta
read nr
mkdir $nr/$nc
exit
