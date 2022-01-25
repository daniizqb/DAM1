#!/bin/bash
#Obtener datos
echo Calcula el area de esta figura
echo Escribe el radio del ciruclo
read rc
echo Escribe la medida de los lados del hexagono
read lh
echo Escribe el apotema del hexagono
read aph
echo El radio del circulo es $rc
echo La medida de los lado del hexagono $lh
echo El apotema del hexagono es $aph
#Hacer los calculos
ac=$(( 3 * $rc**2 ))
ah=$(( 3 * $lh * $aph ))
at=$(( $ac - $ah ))
echo El area de la figura es $at