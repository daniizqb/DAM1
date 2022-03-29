#!/bin/bash
# Ej1

pass='1234'
length=${#pass}
echo Numero de caracteres: $length

declare -a nums=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9')
i=2

for ((i=0;i<length;i++)) do
    for ((j=0;j<10;j++)) do
        if [ ${pass:$i:1} -eq ${nums[$j]} ];then
            var="$var${nums[$j]}"
        fi
    done
done

echo "$var"

# Ej2

echo Nombre
read name

echo Pass
read pass

for ((i=0;i<length;i++)) do
    ${pass:$i:1}
    var="$var${nums[$j]}"
done