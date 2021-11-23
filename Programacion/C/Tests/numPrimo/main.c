#include <stdio.h>

main () {
    int num=0,i=0,aux=0;

    printf("Introduce numero:");

    do {
        scanf("%d", &num);
        fflush(stdin);
    } while (num<0);

    i=2;
    do {
        if (num % i == 0 && i != num) {
            aux+=1;
            printf("El numero no es primo");
        }
        i++;
    } while (aux == 0 && i<=100);

    if (aux == 0)
        printf("El numero es primo");

    return 0;
}