#include <stdio.h>
#include <locale.h>

main () {
    setlocale(LC_CTYPE,"Spanish");
    int num=0;

    printf("Numero:");
    scanf("%d",&num);
    fflush(stdin);

    if (num > 0)
        printf("El numero %d es positivo", num);
    else
        if (num < 0)
            printf("El numero es negativo");
        else
            printf("El numero es nulo");

    return 0;
}