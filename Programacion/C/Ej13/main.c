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

    do {
        puts("Nombre y apellidos");
        scanf("%hd", &num);
        fflush(stdin);

        system("cls");
        puts(aString[num-1]);
    } while (num>0);

    return 0;
}