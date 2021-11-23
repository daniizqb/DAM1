#include <stdio.h>
#include <locale.h>
#define TAM 10
main () {
    short i = 0, noCap = 0, aNum[TAM] = {0,1,2,3,4,2,3,2,1,0};

    setlocale(LC_CTYPE,"Spanish");

    noCap = 0;
    i = 0;
    do {
        if (aNum[i] != aNum[TAM - (i + 1)]) {
            noCap = 1;
            printf("El array no es capicúa");
        } else i++;
    } while (!noCap && i <= TAM / 2);

    if (!noCap)
        printf("El array es capicúa");

    return 0;
}