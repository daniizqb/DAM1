/*
 * Dias futuros: 227
 * Dentro de 227 dias la fecha sera: 14-7-2023
 * */

#include <stdio.h>
#include <time.h>

#define YEARSEC 31536000
#define MONTHSEC 2592000
#define DAYSEC 86400
#define TAM 50


int main() {
    struct tm fecha1;
    time_t fechaUsuario = 0, fechaActual = 0;
    long resultado = 0;
    int day = 0;
    char buffer[TAM]="";

    fecha1.tm_mday = 0;
    fecha1.tm_mon = 0;
    fecha1.tm_year = 0;

    fecha1.tm_hour = 0;
    fecha1.tm_min = 0;
    fecha1.tm_sec = 0;

    puts("Introduce una dia - mes - anyo");
    scanf("%d",&fecha1.tm_mday);
    fflush(stdin);

    scanf("%d",&fecha1.tm_mon);
    fflush(stdin);
    fecha1.tm_mon = fecha1.tm_mon - 1;

    scanf("%d",&fecha1.tm_year);
    fflush(stdin);
    fecha1.tm_year = fecha1.tm_year - 1900;

    time(&fechaActual);
    fechaUsuario = mktime(&fecha1);

    resultado = (long) (fechaActual - fechaUsuario);

    day = resultado / DAYSEC;

    printf("La diferencia de dias es de %d\n",day);

    puts("Dias futuros:");
    scanf("%d",&day);
    fflush(stdin);

    resultado = (long) day * DAYSEC;
    fechaActual += resultado;

    printf("Dentro de %d dias la fecha sera %s\n",day, ctime(&fechaActual));

    strftime(buffer,TAM,"%x %H:%M", localtime(&fechaActual));
    printf("%s\n",buffer);

    return 0;
}
