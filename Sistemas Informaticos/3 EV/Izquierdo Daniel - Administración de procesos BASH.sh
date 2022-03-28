#!/bin/bash
echo Administración de usuarios y grupos

while [user != "N"];do
    echo Elige una de las opciones a administrar:
    echo 1.- Mostrar Procesos
    echo 2.- Eliminar Procesos
    read usernum

    if [ $usernum -eq 1 ];then
        Has elegido la opción 1, gestión de usuarios. Elige la acción que Quieres realizar:
        echo 1.- Listar de procesos activos 
        echo 2.- Listar de procesos en ejecución
        echo 3.- Listar procesos ejecutados por un usuario
        echo 4.- Listar número de procesos ejecutados por un usuario
        echo 5.- Listar procesos con información a visualizar a elección del usuario

        read usernum

        if [ $usernum -eq 1 ];then
            echo Has elegido la opción $usernum
            echo Estos son los procesos activos
            ps -e
        elif [ $usernum -eq 2 ];then
            echo Has elegido la opción $usernum
            echo Estos son los procesos en ejecución
            ps -ef
        elif [ $usernum -eq 3 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuario
            read usernom
            echo Estos son los procesos ejecutados por $usernom
            ps -u $usernom
        elif [ $usernum -eq 4 ];then
            echo Has elegido la opción $usernum
            echo Introduce nombre del usuario
            read usernom
            echo Estos son el numero de procesos ejecutados por el usuario $usernom
            ps -u $usernom | wc -l
        
        elif [ $usernum -eq 5 ];then
            echo Has elegido la opción $usernum
            echo Quieres listar los procesos de un usuario en concreto? (S/N)
            read usernum
            if [ $usernum == "S" ]; then
                echo Introduce nombre del usuario
                read usernom

                output="-u $user "
            fi

            echo Quieres mostrar el PID?
            read cec
            appendOutput $cec "pid"
            echo Quieres mostrar el PPID?
            read cec
            appendOutput $cec "ppid"
            echo Quieres mostrar el uso de CPU del proceso
            read cec
            appendOutput $cec "c"
            echo Quieres mostrar la hora en la que comenzo el proceso?:
            read cec
            appendOutput $cec "stime"
            echo Quieres mostrar el TTY?
            read cec
            appendOutput $cec "tty"
            echo Quieres mostrar el tiempo?
            read cec
            appendOutput $cec "time"
            echo Quieres mostrar el comando?
            read cec
            appendOutput $cec "cmd"
            ps $output
        fi
        
    elif
        echo 1.- A través de su ID
        echo 2.- A través de su nombre

        read usernum

        if [ $usernum -eq 1 ];then
            echo Has elegido la opción $usernum
            echo Introduce el id del proceso
            read id
            kill $id

            echo Se ha eliminado el proceso $id
        elif [ $usernum -eq 2 ];then
            echo Has elegido la opción $usernum
            echo Introduce el nombre del proceso que quieres elminar
            read usernom

            id=`pidof $usernom`
            kill $id
            echo Se ha eliminado el proceso $usernom
        fi


    fi

    echo Quieres realizar otra accion de administracion (S/N)
    read user
done