#include <stdio.h>
#include <locale.h>

#define TAMN 21
#define TAMA 21
main() {

    setlocale(LC_CTYPE, "Spanish");

    short nota=0;
    char nombre[TAMN]="";
    char apellido[TAMA]="";

    printf("Nombre y Apellido:\n");
    scanf("%s %s",nombre,apellido);
    fflush(stdin);
    printf("Nota:");
    scanf("%hd",&nota);
    fflush(stdin);
    if (nota>=0 && nota<=2)
        printf("%s %s tiene un insuficiente",nombre,apellido);
    else if (nota>=3 && nota<=4)
        printf("%s %s tiene un suspenso",nombre,apellido);
    else if (nota==5)
        printf("%s %s tiene un suficiente",nombre,apellido);
    else if (nota==6)
        printf("%s %s tiene un bien",nombre,apellido);
    else if (nota>=7 && nota<=8)
        printf("%s %s tiene un notable",nombre,apellido);
    else if (nota>=9 && nota<=10)
        printf("%s %s tiene un sobresaliente",nombre,apellido);
    else
        printf("Nota no valida");

    return 0;

}