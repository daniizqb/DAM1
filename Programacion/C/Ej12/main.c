#include <stdio.h>
#include <string.h>
#define TAM 11
main () {
    char cadena [TAM] = "";
    char cadena2 [TAM] = "";

    printf("Escribre 2 palabras");
    scanf("%s",cadena);
    fflush(stdin);
    scanf("%s",cadena2);
    fflush(stdin);

    if (strcmp(cadena,cadena2) == 0)
        printf("Las palabras son iguales");
    else
        printf("Las palabras no son iguales");

    return 0;
}