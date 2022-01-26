#!/bin/bash
echo Elija que desea calcular area o perimetro
read userchoise

if [ "$userchoise" = "area" ] || [ "$userchoise" = "perimetro" ]; then
    echo Elija el tipo de triangulo rectangulo o acutangulo o obtusangulo
    read triangle
    if [ "$triangle" = "acutangulo" ] || [ "$triangle" = "obtusangulo" ]; then
        echo Introduce las medidas de los 3 lados
        read s1
        read s2
        read s3
        if [ $s1 -eq 0 ] || [ $s2 -eq 0 ] || [ $s3 -eq 0 ]; then
            echo Las medidas de los lados son incorrectas, el programa no se puede realizar
            exit
        fi
        echo El usuario ha seleccionado los siguiente datos:
        echo - Tipo de triangulo: $triangle
        echo - Calculo: $userchoise
        echo Las medidas de los lados son las siguientes:
        echo - Lado A: $s1
        echo - Lado B: $s2
        echo - Lado C: $s3

        perimetro=$(($s1+$s2+$s3))
        s=$(($perimetro/2))

        if [ "$userchoise" = "area" ]; then
            sqrt_a=$(($s * ($s-$s1) * ($s-$s2) * ($s - $s3)))
            area2=$(echo "sqrt($sqrt_a)" | bc)
            echo El area del triangulo es de $area2
        else
            echo El perimetro del triangulo es de $perimetro
        fi

    elif [ "$triangle" = "rectangulo" ]; then
        echo Introduce las medidas de la base y la altura
        read base
        read altura

        if [ $base -eq 0 ] || [ $altura -eq 0 ]; then
            echo Las medidas de los lados son incorrectas, el programa no se puede realizar
            exit
        fi

        c=$(($base**2+$altura**2))
        echo El usuario ha seleccionado los siguiente datos:
        echo - Tipo de triangulo: $triangle
        echo - Calculo: $userchoise
        echo Las medidas de los lados son las siguientes:
        echo - Lado A: $base
        echo - Lado B: $altura
        echo - Lado C: $(echo "sqrt($c)" | bc)

        perimetro=$base+$altura+$hipo
        area1=$(($base*$altura/2))

        if [ "$userchoise" = "area" ]; then
            echo El area del triangulo es de $area1
        else
            echo El perimetro del triangulo es de $perimetro
        fi
    else
        echo El tipo de triangulo seleccioando es incorrecto, el programa no se puede realizar
        exit
    fi
else
    echo La opcion de calculo seleccionado es incorrecto, el programa no se puede realizar
    exit
fi