#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define TAMF 10
#define TAMC 50
main () {
    short i=0,num=0;
    char aString [TAMF][TAMC];

    for (i = 0; i < TAMF; i++) {
        strcpy(aString[i], "");
    }

    puts("Introduce nombre y apellidos");

    for (i=0;i<TAMF;i++) {
        gets(aString[i]);
    }

    puts("Nombre y apellidos (0 para terminar)");

    do {
        scanf("%hd", &num);
        fflush(stdin);
    } while (num > TAMF || num < 0);

    while (num > TAMF || num < 0) {
        puts(aString[num-1]);
        puts("Nombre y apellidos (0 para terminar)");
        scanf("%hd", &num);
        fflush(stdin);
    }

    return 0;
}