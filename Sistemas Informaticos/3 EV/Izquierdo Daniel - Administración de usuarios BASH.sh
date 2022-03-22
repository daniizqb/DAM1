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
            read usernom
            useradd -m $usernom
            echo Se ha creado el usuario $usernom
        elif [ $usernum -eq 2 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuario que deseas eliminar
            read usernom
            userdel -r $usernom
            echo Se ha eliminado el usuario $usernom
        elif [ $usernum -eq 3 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuarios
            read usernom
            echo Introduce el grupo al que deseas agregar el usuario
            read group
            adduser $usernom $group
            echo Se ha agregado el usuario $usernom al grupo $group
        elif [ $usernum -eq 4 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuarios
            read userName
            echo Introduce el grupo al que deseas agregar el usuario
            read group
            usermod -g $group $usernom
                echo Se ha agregado el suario $name asignado al grupo primario $group
        elif [ $usernum -eq 5 ];the
            echo Has elegido la opción $usernum
            echo Indicia que quieres modificar:
                echo 1.- Modificar nombre
                echo 2.- Modificar contraseña
                read usernum

                echo ""
                if [ $usernum == 1 ]; then
                    echo Has elegido la opción $usernum

                    echo Introduce nombre del usuario
                    read usernom

                    echo Introduce el nuevo nombre del usuario
                    read newusernom

                    usermod -l $newusernom $usernom
                    echo Nombre de $usernom cambiado a $newusernom
                elif [ $usernum == 2 ]; then
                    echo Has elegido la opción 2, cambiar la contraseña de un usuario
                    echo Indica el nombre del usuario
                    read usernom
                    passwd $usernom
                fi
        elif [ $usernum -eq 6 ];then
            echo Has elegido la opción $usernum
            echo Los usuarios del sistema son:
            cat /etc/passwd
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

            groupadd $group
            echo Se ha agragado el grupo $group
        elif [ $usernum -eq 2 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del grupo qeu deseas elminar
            read group

            groupdel $group
            echo Se ha eliminado el grupo $group
        elif [ $usernum -eq 3 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del grupo a modificar
            read group

            echo Introduce el nuevo nombre del grupo
            read newgroupnom

            groupmod -n $newgroupnom $group
            echo Nombre de $group cambiado a $newgroupnom
        elif [ $usernum -eq 4 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del grupo que desaeas mostrar los usuarios
            read group

            echo Los usuarios del grupo $group son:
            getent group $group
        elif [ $usernum -eq 5 ];then
            echo Has elegido la opción $usernum
            echo Los grupos del sistema son:
            cat /etc/group
        fi


    fi

    echo Deseas realizar otra accion de administracion (S/N)
    read user
done