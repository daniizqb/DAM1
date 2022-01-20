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
void subcadena (char cad[], char cad2[]);

int main() {
    int i = 0, cDig = 0, cMinus = 0, cMayus = 0, cEspac = 0, cSimbl = 0, cAlphn = 0;
    short tam = 0;
    char cad [TAMCAD] = "";
    char cad2 [TAMCAD] = "";

    puts("Primera cadena: ");
    gets(cad);

    tam = strlen(cad);
    for (i = 0; i < tam; i++) {
        if (isdigit(cad[i]))
            cDig++;
        else if (islower(cad[i]))
            cMinus++;
        else if (isupper(cad[i]))
            cMayus++;
        else if (isspace(cad[i]))
            cEspac++;
        else if (ispunct(cad[i]))
            cSimbl++;
    }

    printf("Digitos: %d\nMinusculas: %d\nMayusculas: %d\nEspacios:%d\nSimbolos:%d\nAlfanumericos:%d\n",cDig, cMinus, cMayus, cEspac, cSimbl, cDig+cMayus+cMinus);

    printf("%s un palindromo\n", esPalindromo(cad)?"No es":"Es");

    puts("Segunda cadena: ");
    gets(cad2);

    subcadena(cad,cad2);

    return 0;
}

short esPalindromo (char cad[]) {
    char cad2 [TAMCAD];

    strcpy(cad2,cad);
    strrev(cad2);

    return stricmp(cad,cad2);
}

void subcadena (char cad[], char cad2[]) {
    printf("La cadena %s %spertenece a la cadena %s",cad2, strstr(cad,cad2)?"":"no ",cad);

    return;
}
