#!/bin/bash
read -p "Dime el numero mas bajo del rango:" min
read -p "Dime el numero mas alto del rango:" max

divmin=10000;
divmax=0;

for ((x=min; x<=max; x++)) do
cont=0;

	for ((num=1; num<=x; num++)) do
		resto=$(($x%$num));
		if [ $resto -eq 0 ]; then
			cont=$(($cont+1));
		fi
	done

	if [ $cont -lt $divmin ]; then
		divmin=$(($cont))
		resultadomin=$(($x))
	fi
	if [ $cont -gt $divmax ]; then
		divmax=$(($cont))
		resultadomax=$(($x))
	fi
done

echo el numero $resultadomin es el que tiene menor divisores con $divmin divisores
echo el numero $resultadomax es el que tiene mayor divisores con $divmax divisores

