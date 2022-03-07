#include <stdio.h>
#include <ctype.h>
#include <string.h>

#define TAM 11

void sUpr (char cadena[]);

int main() {
    char cadena [TAM] = "";

    printf("Introduce Cadena de %d caracteres\n",TAM);
    gets(cadena);

    sUpr(cadena);
    puts(cadena);

    return 0;
}

void sUpr (char cadena[]) {
    short i = 0, sTam = 0;

    sTam = strlen(cadena);
    for (i = 0; i < sTam; i++) {
        cadena [i] = toupper(cadena[i]);
    }

    return;
}