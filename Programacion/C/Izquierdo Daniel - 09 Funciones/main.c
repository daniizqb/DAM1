#include <stdio.h>
#include <string.h>
#define TAM 11

int strLenght (const char string[]);
int main() {
    int i=0;
    char cadena [TAM]="";

    for (i = 0;i < TAM;i++) {
        cadena[i] = ' ';
    }

    printf("Introduce Cadena: ");
    scanf("%s",cadena);
    fflush(stdin);

    printf("La cadena contiene %d caracteres",strLenght (cadena));

    return 0;
}

int strLenght (const char string[]) {
    int i = 0, cont = 0;
    for (i = 0;i < TAM-1;i++) {
        if (string[i] != ' ')
            cont++;
    }

    return cont;
}