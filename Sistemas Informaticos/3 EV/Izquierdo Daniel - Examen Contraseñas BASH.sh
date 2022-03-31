#!/bin/bash
export LC_COLLATE=C

echo Introduzca usuario
read user
flag=true
contnum=1
contesp=0
contminus=0
contmayus=0
declare -a nums=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9')
declare -a esp=('!' '"' '·' '$' '%' '&' '/' '(' ')' '=' '?' '¿')
declare -a minus=('q' 'w' 'e' 'r' 't' 'y' 'u' 'i' 'o' 'p' 'a' 's' 'd' 'f' 'g' 'h' 'j' 'k' 'l' 'ñ' 'z' 'x' 'c' 'v' 'b' 'n' 'm')
declare -a mayus=('Q' 'W' 'E' 'R' 'T' 'Y' 'U' 'I' 'O' 'P' 'A' 'S' 'D' 'F' 'G' 'H' 'J' 'K' 'L' 'Ñ' 'Z' 'X' 'C' 'V' 'B' 'N' 'M')
while [ $flag == true ];do
    echo Introduzca password
    read pass
    length=${#pass}
    l2=${#minus[@]}
    if [ $length -ge 10 ];then
        if [[ $pass == *$user* ]];then
            echo El usuario es igual a la contraseña
            flag=true
        else
            j=0
            for ((j=0;j<10;j++)) do
                if [ ${pass:0:1} == "${nums[$j]}" ];then
                    flag=false
                fi
            done

            if [ $flag == false ];then
                for ((i=1;i<length;i++)) do
                    for ((j=0;j<l2;j++)) do
                        if [ ${pass:$i:1} == "${nums[$j]}" ];then
                            contnum=$(($contnum+1))
                        else 
                            if [ ${pass:$i:1} == "${esp[$j]}" ];then
                                contesp=$(($contesp+1))
                            else
                                if [ ${pass:$i:1} == "${minus[$j]}" ];then
                                    contminus=$(($contminus+1))
                                else
                                    if [ ${pass:$i:1} == "${mayus[$j]}" ];then
                                        contmayus=$(($contmayus+1))
                                    fi
                                fi
                            fi
                        fi
                    done
                done
            fi

            echo esp $contesp
            echo num $contnum
            echo minus $contminus
            echo mayus $contmayus
            if [ $contesp -lt 1 ];then
                echo La contraseña tiene menos de un caracter especial
                flag=true
            fi
            if [ $contnum -lt 2 ];then
                echo La contraseña tiene menos de dos numeros
                flag=true
            fi
            if [ $contminus -gt 2 ];then
                echo La contraseña tiene mas de dos minusculas
                flag=true
            fi
            if [ $contmayus -lt 2 ];then
                echo La contraseña tiene menos de dos mayusculas
                flag=true
            fi
        fi
    else
        echo La contraseña tiene menos de 10 caracteres
        flag=true
    fi
done
echo Usuario $user
echo Pass $pass
useradd -m -p $(openssl passwd -1 $pass) $user 