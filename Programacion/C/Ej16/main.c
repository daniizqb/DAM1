#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

/*
 * 1 - Funcion para dar entrada a un numero positvo
 * 2 - Funcion para obtener el mayor de dos numeros
 * 3 - Procedimiento que solicite dos numeros posiivos e imprima por pantalla el mayor de ellos
 * 4 - Programa principal para comprobar el funcionamiento de 1 , 2 y 3
 * */

int numPositivo ();
int numMayor ();
void numMayorScan ();

main () {
    setlocale(LC_CTYPE,"Spanish");

    printf("1: %d\n", numPositivo());
    printf("2: %d\n", numMayor());
    puts("3");
    numMayorScan();

    system("pause");

    return 0;
}

int numPositivo () {
    int num=0;

    do {
        puts("Número Positivo:");
        scanf("%d", &num);
        fflush(stdin);
    } while (num<0);

    return num;
}

int numMayor () {
    int num1=0,num2=0,mayor=0;

    num1=numPositivo();
    num2=numPositivo();

    mayor = num2;
    if (mayor < num1)
        mayor = num1;

    return mayor;
}

void numMayorScan () {
    printf("Mayor: %d\n", numMayor());
}