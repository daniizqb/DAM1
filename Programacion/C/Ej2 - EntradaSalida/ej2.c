#include <stdio.h>
#define MAX 7
#include <locale.h>

main () {
    setlocale(LC_CTYPE,"Spanish");
    float precio=0;
    int num=0;
    char letra=' ';
    char nombre[MAX]=" ";

    printf("Escribre num");
    scanf("%d", &num);
    fflush(stdin);
    printf("Escribre precio");
    scanf("%f", &precio);
    fflush(stdin);
    printf("Escribre letra");
    scanf("%c", &letra);
    fflush(stdin);
    printf("Escribre nombre");
    scanf("%s", nombre);
    fflush(stdin);

    printf("El cuadrado de %d es %d\n",num,num*num);
    printf("%d * %d = %d\n",num,num,num*num);
    printf("%d unidades a %.1f euros son %.2f\n",num,precio,num*precio);
    printf("%s tiene %d anos\n",nombre,num);
    printf("La siguiente letra a \"%c\" es la \"%c\"\n",letra,letra+1);

    return 0;
}
