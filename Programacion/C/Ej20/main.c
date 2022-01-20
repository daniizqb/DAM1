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

char esPalindromo (char cad);

int main() {
    int i = 0, cont = 0;
    char cad [TAMCAD] = "Hola Buenos d1as :)";

    /*puts("Primera cadena: ");
    gets(cad);*/

    puts("Digitos: ");
    cont = 0;
    i = 0;
    do {
        if (isdigit(cad[i]))
            cont++;
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');
    printf("%d\n",cont);

    puts("Minusculas: ");
    cont = 0;
    i = 0;
    do {
        if (islower(cad[i]))
            cont++;
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');
    printf("%d\n",cont);

    puts("Mayusculas: ");
    cont = 0;
    i = 0;
    do {
        if (isupper(cad[i]))
            cont++;
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');
    printf("%d\n",cont);

    puts("Espacios: ");
    cont = 0;
    i = 0;
    do {
        if (isspace(cad[i]))
            cont++;
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');
    printf("%d\n",cont);

    puts("Simbolos: ");
    cont = 0;
    i = 0;
    do {
        if (ispunct(cad[i]))
            cont++;
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');
    printf("%d\n",cont);

    puts("Alfanumericos: ");
    cont = 0;
    i = 0;
    do {
        if (isalnum(cad[i]))
            cont++;
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');
    printf("%d\n",cont);

    //printf("%s un palindromo", esPalindromo(cad)?"Es":"No es");

    return 0;
}

/*int myCtype (int funcion, char cad) {
    int i = 0, cont = 0;
    do {
        if (funcion)
            cont++;
        i++;
    } while (i <= TAMCAD && cad[i] != '\0');
    printf("%d\n",cont);
}*/

char esPalindromo (char cad) {
    char str []
}