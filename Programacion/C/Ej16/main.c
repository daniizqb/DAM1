#include <stdio.h>
#include <locale.h>

/*
 * 1 - Funcion para dar entrada a un numero positvo
 * 2 - Funcion para obtener el mayor de dos numeros
 * 3 - Procedimiento que solicite dos numeros posiivos e imprima por pantalla el mayor de ellos
 * 4 - Programa principal para comprobar el funcionamiento de 1 , 2 y 3
 * */

int numPositivo (int num);
int numMayor ();

main () {
    setlocale(LC_CTYPE,"Spanish");

    printf("F1: %d", numPositivo());

    return 0;
}

/*float area (float num1,float num2) {
    return (num1 * num2) / 2;
}*/

int numPositivo (int num) {

    do {
        puts("Numero Positivo:");
        scanf("%d", &num);
        fflush(stdin);
    } while (num<0);

    return num;
}

int numMayor (num1,num2) {
    int mayor = num2;

    if (mayor > num1)
        mayor = num1;

    return mayor;
}

void numMayorScan () {
    int num1 = 0, mayor = 0;

    printf("Mayor: %d", mayor);
}