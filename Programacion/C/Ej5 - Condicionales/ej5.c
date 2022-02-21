#include <stdio.h>
#include <locale.h>

#define TAMN 21
#define TAMA 21
main() {

    setlocale(LC_ALL, "Spanish");

    short nota=0;
    char nombre[TAMN]="";
    char apellido[TAMA]="";

    printf("Nombre alumno:\n");
    scanf("%s %s",nombre,apellido);
    fflush(stdin);
    printf("Nota:");
    scanf("%hd",&nota);
    fflush(stdin);
    switch (nota) {
        case 0:
        case 1:
        case 2: printf("%s %s tiene un insuficiente",nombre,apellido);break;
        case 3:
        case 4: printf("%s %s tiene un suspenso",nombre,apellido);break;
        case 5: printf("%s %s tiene un suficiente",nombre,apellido);break;
        case 6: printf("%s %s tiene un bien",nombre,apellido);break;
        case 7:
        case 8: printf("%s %s tiene un notable",nombre,apellido);break;
        case 9:
        case 10: printf("%s %stiene un sobresaliente",nombre,apellido);break;
        default: printf("La nota introducida es invalida");break;
    }
    return 0;
}