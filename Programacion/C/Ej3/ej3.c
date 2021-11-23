#include <stdio.h>

main() {

    float base=0;
    float altura=0;

    printf("Base:");
    scanf("%d",&base);
    fflush(stdin);
    printf("Altura:");
    scanf("%d",&altura);
    fflush(stdin);
    printf("El área del triángulo de base %f y altura %f es %f",base,altura,base*altura/2);

}

