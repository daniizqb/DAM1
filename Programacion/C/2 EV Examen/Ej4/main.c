#include <stdio.h>
#include <time.h>
#include <locale.h>

struct date {
    short anio;
    short mes;
    short dia;
};

int main() {
    struct date fecha = {0,0,0};
    short day = 0;
    setlocale(LC_CTYPE,"Spanish");

    puts("Año");
    scanf("%hd",&fecha.anio);
    fflush(stdin);
    while (fecha.anio < 2000 || fecha.anio > 3000 ) {
        scanf("%hd",&fecha.anio);
        fflush(stdin);
    }

    puts("Mes");
    scanf("%hd",&fecha.mes);
    fflush(stdin);
    while (fecha.mes < 1 || fecha.mes > 12 ) {
        scanf("%hd",&fecha.mes);
        fflush(stdin);
    }

    puts("Dia");
    scanf("%hd",&fecha.dia);
    fflush(stdin);
    while (fecha.dia < 1 || fecha.dia > 31 ) {
        scanf("%hd",&fecha.dia);
        fflush(stdin);
    }

    printf("\n\nDias a incrementar:");
    scanf("%hd",&day);
    fflush(stdin);

    printf("La fecha resultante es:");

    return 0;
}
