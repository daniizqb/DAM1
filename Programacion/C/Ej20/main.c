/*
 * Pedimos cadena de maximo 50 char
 * Primera cadena:
 *
 * Digitos:
 * Minusculas:
 * Mayusculas:
 * Espacios:
 * Simbolos:
 * Alfanumericos:
 *
 * Es un palindromo?: (hacerlo mediante una funcion)
 *
 * Segunda cadena:
 *
 * cad2 es subcadena de cad1 (hacerlo mediante procedimiento, el procedimiento hace el print)
 * */

#include <stdio.h>
#include <ctype.h>
#include <string.h>

#define TAMCAD 51

short esPalindromo (char cad[]);
void myCtype (int *caso, char cad[]);

int main() {
    int i = 0, cont = 0, caso = 0;
    char cad [TAMCAD] = "";

    puts("Primera cadena: ");
    gets(cad);

    caso = 1;
    puts("Digitos: ");
    myCtype(&caso, cad);
    puts("Minusculas: ");
    myCtype(&caso, cad);
    puts("Mayusculas: ");
    myCtype(&caso, cad);
    puts("Espacios: ");
    myCtype(&caso, cad);
    puts("Simbolos: ");
    myCtype(&caso, cad);
    puts("Alfanumericos: ");
    myCtype(&caso, cad);

    printf("%s un palindromo", esPalindromo(cad)?"Es":"No es");

    puts("Segunda cadena: ");
    gets(cad);

    return 0;
}

void myCtype (int *caso, char cad[]) {
    int i = 0, cont = 0;

    do {
        switch (*caso) {
            case 1: if (isdigit(cad[i])){cont++;}break;
            case 2: if (islower(cad[i])){cont++;}break;
            case 3: if (isupper(cad[i])){cont++;}break;
            case 4: if (isspace(cad[i])){cont++;}break;
            case 5: if (ispunct(cad[i])){cont++;}break;
            case 6: if (isalnum(cad[i])){cont++;}break;
            default: printf("Caracter no valido");break;
        }
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');

    printf("%d\n", cont);
    *caso = *caso + 1;

    return;
}


short esPalindromo (char cad[]) {
    int i = 0, cont = 0, bool = 0;
    char cad2 [TAMCAD] = "";

    do {
        i++;
        cont++;
    } while (cad[i] != '\0' && i <= TAMCAD);

    strcpy(cad2,cad);
    if (stricmp(cad,cad2))
        bool = 1;

    return bool;

}
