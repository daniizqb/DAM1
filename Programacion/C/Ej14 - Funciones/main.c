#include <stdio.h>

int sumaDosNum(int num1, int num2);
int sumaAndScan ();
void sumaAndScanBis ();
void sumaAndScanBisBis ();

main () {
    int a=0, b=0;

    puts("Num1:");
    scanf("%d",&a);
    fflush(stdin);
    puts("Num1:");
    scanf("%d",&b);
    fflush(stdin);

    printf("Funcion 1: %d\n",sumaDosNum(a,b));
    printf("Funcion 2: %d\n",sumaAndScan());
    sumaAndScanBis();
    sumaAndScanBisBis();

    return 0;
}

int sumaDosNum (int num1, int num2) {
    int suma = 0;
    suma = num1 + num2;

    return suma;
}

int sumaAndScan () {
    int suma = 0, a = 0, b = 0;

    puts("Num1:");
    scanf("%d",&a);
    fflush(stdin);
    puts("Num1:");
    scanf("%d",&b);
    fflush(stdin);

    suma = a + b;

    return suma;
}

void sumaAndScanBis () {
    int suma = 0, a = 0, b = 0;

    puts("Num1:");
    scanf("%d",&a);
    fflush(stdin);

    puts("Num2:");
    scanf("%d",&b);
    fflush(stdin);

    printf("Funcion 3: %d\n",a + b);

    return;
}

void sumaAndScanBisBis () {
    int suma = 0, a = 0, b = 0;

    puts("Num1:");
    scanf("%d",&a);
    fflush(stdin);

    puts("Num2:");
    scanf("%d",&b);
    fflush(stdin);

    printf("Funcion 4: %d\n", sumaDosNum(a,b));

    return;
}