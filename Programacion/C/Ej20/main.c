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

short esPalindromo (char cad);
int myCtype (int caso, char cad[]);

int main() {
    int i = 0, cont = 0, caso = 0;
    char cad [TAMCAD] = "Hola Buenos d1as :)";

    /*puts("Primera cadena: ");
    gets(cad);*/

    caso++;
    puts("Digitos: ");
    printf("%d\n", myCtype(caso,cad));

    caso++;
    puts("Minusculas: ");
    printf("%d\n", myCtype(caso,cad));

    caso++;
    puts("Mayusculas: ");
    printf("%d\n", myCtype(caso,cad));

    caso++;
    puts("Espacios: ");
    printf("%d\n", myCtype(caso,cad));

    caso++;
    puts("Simbolos: ");
    printf("%d\n", myCtype(caso,cad));

    caso++;
    puts("Alfanumericos: ");
    printf("%d\n", myCtype(caso,cad));

    //printf("%s un palindromo", esPalindromo(cad)?"Es":"No es");

    return 0;
}

int myCtype (int caso, char cad[]) {
    int i = 0, cont = 0;
    do {
        switch (caso) {
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

    return cont;
}

short esPalindromo (char cad) {

    if (stricmp(cad, strrev(cad)))
        return 1;
    else
        return 0;
}