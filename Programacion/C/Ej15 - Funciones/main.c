#include <stdio.h>
#include <locale.h>

float area (float num1, float num2);

main () {
    float num1 = 0,num2 = 0;

    setlocale(LC_CTYPE,"Spanish");

    puts("Base:");
    scanf("%f",&num1);
    fflush(stdin);

    puts("Altura:");
    scanf("%f",&num2);
    fflush(stdin);

    printf("El area del triangulo de base %.1f y altura %.1f es %.1f",num1,num2,area(num1,num2));

    return 0;
}

float area (float num1,float num2) {
    return (num1 * num2) / 2;
}
