#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

/*
 * 1 - Función para dar entrada a un número positvo
 * 2 - Función para obtener el mayor de dos números
 * 3 - Procedimiento que solicite dos números positivos e imprima por pantalla el mayor de ellos
 * 4 - Programa principal para comprobar el funcionamiento de 1 2 y 3
 * */

<<<<<<< HEAD
int numPositivo (int num);
int numMayor (int num1,int num2);
=======
int numPositivo ();
int numMayor (int num1, int num2);
>>>>>>> bbaabad1e91acbc7b196222501869159a0f1a6f1
void numMayorScan ();

main () {
    int num=0;

    setlocale(LC_CTYPE,"Spanish");

<<<<<<< HEAD
    puts("Funcion 1:");
    numPositivo(num);

    puts("Funcion 2:");
    numMayor(num,num);

    puts("Funcion 3:");
    numMayorScan();

=======
    puts("Procedimiento: ");
    numMayorScan();

    system("pause");
>>>>>>> bbaabad1e91acbc7b196222501869159a0f1a6f1

    return 0;
}

<<<<<<< HEAD
int numPositivo (int num) {=======
int numPositivo () {
    int num=0;

>>>>>>> bbaabad1e91acbc7b196222501869159a0f1a6f1
    do {
        puts("Número Positivo:");
        scanf("%d", &num);
        fflush(stdin);
    } while (num<0);

    return num;
}

<<<<<<< HEAD
int numMayor (int num1,int num2) {
    int mayor = 0;

    num1=4;num2=6;
    mayor=num2;
=======
int numMayor (int num1, int num2) {
    int mayor=0;
>>>>>>> bbaabad1e91acbc7b196222501869159a0f1a6f1

    mayor = num2;
    if (mayor < num1)
        mayor = num1;

    printf("El mayor es %d\n",mayor);

    return mayor;
}

void numMayorScan () {
<<<<<<< HEAD

    numPositivo();
    numPositivo(num2);
    numMayor(num1,num2);
=======
    printf("Mayor: %d\n", numMayor(numPositivo(),numPositivo()));

    return;
>>>>>>> bbaabad1e91acbc7b196222501869159a0f1a6f1
}