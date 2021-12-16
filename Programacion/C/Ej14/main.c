#include <stdio.h>

int sumaDosNum(int num1, int num2);
int sumaAndScan ();

main () {
    int a=0, b=0;

    scanf("%d",&a);
    scanf("%d",&b);

    printf("Funcion 1: %d\n",sumaDosNum(a,b));
    printf("Funcion 2: %d",sumaAndScan());

    return 0;
}

int sumaDosNum (int num1, int num2) {
    int suma = 0;
    suma = num1 + num2;

    return suma;
}

int sumaAndScan () {
    int suma = 0, a = 0, b = 0;

    scanf("%d",&a);
    scanf("%d",&b);

    suma = a + b;

    return suma;
}