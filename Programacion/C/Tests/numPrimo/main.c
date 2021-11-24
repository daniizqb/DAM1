#include <stdio.h>

main () {
    int num=0,i=0,cont=0;

    printf("Introduce numero:");

    do {
        scanf("%d", &num);
        fflush(stdin);
    } while (num<0);

    i=2;
    cont=0;
    do {
        if (num % i == 0 && i != num) {
            cont+=1;
            printf("El numero no es primo");
        }
        i++;
    } while (cont == 0 && i<num);

    if (num == 1)
        printf("El numero no es primo");
    else if (cont == 0)
        printf("El numero es primo");

    return 0;
}