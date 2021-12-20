#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

/*
 * 1 - Función para dar entrada a un número positvo
 * 2 - Función para obtener el mayor de dos números
 * 3 - Procedimiento que solicite dos números positivos e imprima por pantalla el mayor de ellos
 * 4 - Programa principal para comprobar el funcionamiento de 1 2 y 3
 * */

int numPositivo ();
int numMayor (int num1, int num2);
void numMayorScan ();

main () {
    setlocale(LC_CTYPE,"Spanish");

    puts("Procedimiento: ");
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

int numMayor (int num1, int num2) {
    int mayor=0;

    mayor = num2;
    if (mayor < num1)
        mayor = num1;

    return mayor;
}

void numMayorScan () {
    printf("Mayor: %d\n", numMayor(numPositivo(),numPositivo()));

    return;
}