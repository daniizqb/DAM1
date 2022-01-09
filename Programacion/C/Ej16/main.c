#include <stdio.h>
#include <locale.h>

/*
 * 1 - Funcion para dar entrada a un numero positvo
 * 2 - Funcion para obtener el mayor de dos numeros
 * 3 - Procedimiento que solicite dos numeros posiivos e imprima por pantalla el mayor de ellos
 * 4 - Programa principal para comprobar el funcionamiento de 1 , 2 y 3
 * */

int numPositivo (int num);
int numMayor (int num1,int num2);
void numMayorScan ();

main () {
    int num=0;

    setlocale(LC_CTYPE,"Spanish");

    puts("Funcion 1:");
    numPositivo(num);

    puts("Funcion 2:");
    numMayor(num,num);

    puts("Funcion 3:");
    numMayorScan();


    return 0;
}

int numPositivo (int num) {
    do {
        puts("Numero Positivo:");
        scanf("%d", &num);
        fflush(stdin);
    } while (num<0);

    return num;
}

int numMayor (int num1,int num2) {
    int mayor = 0;

    num1=4;num2=6;
    mayor=num2;

    if (mayor > num1)
        mayor = num1;

    printf("El mayor es %d\n",mayor);

    return mayor;
}

void numMayorScan () {

    numPositivo();
    numPositivo(num2);
    numMayor(num1,num2);
}