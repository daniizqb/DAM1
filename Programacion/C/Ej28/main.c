#include <stdio.h>
#include <time.h>

int main() {
    struct tm fecha1;
    struct tm fecha2;
    time_t fechaUsuario = 0, fechaSem = 0, dif = 0;

    fecha1.tm_mday = 1;
    fecha1.tm_mon = 0;
    fecha1.tm_year = 0;

    fecha1.tm_hour = 0;
    fecha1.tm_min = 0;
    fecha1.tm_sec = 0;
    fecha1.tm_isdst = 1;


    fecha2.tm_mday = 15;
    fecha2.tm_mon = 3-1;
    fecha2.tm_year = 2022-1900;

    fecha2.tm_hour = 0;
    fecha2.tm_min = 0;
    fecha2.tm_sec = 0;
    fecha2.tm_isdst = 1;

    puts("Introduce una dia - mes - anyo");
    scanf("%d",&fecha1.tm_mday);
    fflush(stdin);

    scanf("%d",&fecha1.tm_mon);
    fflush(stdin);
    fecha1.tm_mon = fecha1.tm_mon - 1;

    scanf("%d",&fecha1.tm_year);
    fflush(stdin);
    fecha1.tm_year = fecha1.tm_year - 1900;

    fechaUsuario = mktime(&fecha1);
    fechaSem = mktime(&fecha2);

    printf("La fecha es %s\n",ctime(&fechaUsuario));

    dif = time(&fechaSem) - time(&fechaUsuario);
    dif = fechaSem - fechaUsuario;

    printf("Quedan %lldl dias hasta semana santa\n", dif);

/*    printf("%s",ctime(&fecha));
    printf("%s", asctime(localtime(&fecha)));
    printf("%d - %d",fecha1.tm_wday ,fecha1.tm_yday);*/

    return 0;
}
