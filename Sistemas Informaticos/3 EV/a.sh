#!/bin/bash
echo Administración de usuarios y grupos

while [user != "N"];do
    echo Elige una de las opciones a administrar:
    echo 1.- Gestión de usuarios
    echo 2.- Gestión de grupos
    read usernum

    if [ $usernum -eq 1 ];then
        Has elegido la opción 1, gestión de usuarios. Elige la acción que deseas realizar:
        echo 1.- Crear nuevo usuario
        echo 2.- Eliminar usuario
        echo 3.- Añadir usuario a grupo
        echo 4.- Asignar usuario a grupo primario
        echo 5.- Modificar usuario
        echo 6.- Mostrar usuarios del sistema

        read usernum

        if [ $usernum -eq 1 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuario que deseas crear
        elif [ $usernum -eq 2 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuario que deseas eliminar
        elif [ $usernum -eq 3 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuarios
            read userName
            echo Introduce el grupo al que deseas agregar el usuario
            read group
        elif [ $usernum -eq 4 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuarios
            read userName
            echo Introduce el grupo al que deseas agregar el usuario
            read group
        elif [ $usernum -eq 5 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuario a modificar
            read userName
        elif [ $usernum -eq 6 ];then
            echo Has elegido la opción $usernum
            echo Los usuarios del sistema son:
        fi
        
    elif
        echo 1.- Crear nuevo grupo
        echo 2.- Eliminar grupo
        echo 3.- Modificar grupo
        echo 4.- Mostrar usuarios de grupo
        echo 5.- Mostrar grupos del sistema

        read usernum

        if [ $usernum -eq 1 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del grupo
            read group
        elif [ $usernum -eq 2 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del grupo qeu deseas elminar
            read group
        elif [ $usernum -eq 3 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del grupo a modificar
            read group
        elif [ $usernum -eq 4 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del grupo que desaeas mostrar los usuarios
            read group
        elif [ $usernum -eq 5 ];then
            echo Has elegido la opción $usernum
            echo Los grupos del sistema son:
        fi


    fi

    echo Deseas realizar otra accion de administracion?
    read user
done