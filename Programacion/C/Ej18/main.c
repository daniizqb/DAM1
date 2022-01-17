//Funcion para ver si un ano es bisiest y procedimiento mediante parametro de referencia

#include <stdio.h>
#include <locale.h>

int esBisiesto (short year);
void esBisiestoP (short year, short *resto);

main() {
    short year=0, resto=0;

    setlocale(LC_CTYPE,"Spanish");

    printf("Introduce año: ");
    scanf("%d",&year);
    fflush(stdin);

    printf("Funcion:\n");
    printf("El año %hd %s\n\n",year, esBisiesto(year)?"es bisiesto":"no es bisiesto");


    printf("Procedimiento:\n");
    esBisiestoP(year,&resto);

    printf("El año %hd %s\n\n",year, !resto?"es bisiesto":"no es bisiesto");

    return 0;
}

int esBisiesto (short year) {
    if (year % 4 == 0)
        return 1;
    else return 0;
}

void esBisiestoP (short year, short *resto) {
    *resto = year % 4;

    return;
}