//Funcion para ver si un ano es bisiest y procedimiento mediante parametro de referencia

#include <stdio.h>
#include <locale.h>

int esBisiesto (short year, short resto);
void esBisiestoP (short year, short *resto);

main() {
    short year=0, resto=0;

    setlocale(LC_CTYPE,"Spanish");

    printf("Introduce a�o: ");
    scanf("%d",&year);
    fflush(stdin);

    printf("Funcion:\n");
    if (esBisiesto(year,resto) == 0)
        printf("El a�o es bisiesto\n\n");
    else
        printf("El a�o no es bisiesto\n\n");

    printf("Procedimiento:\n");
    esBisiestoP(year,&resto);
    if (resto == 0)
        printf("El a�o es bisiesto\n\n");
    else
        printf("El a�o no es bisiesto\n\n");

    return 0;
}

int esBisiesto (short year, short resto) {
    resto = year % 4;

    return resto;
}

void esBisiestoP (short year, short *resto) {
    *resto = year % 4;

    return;
}