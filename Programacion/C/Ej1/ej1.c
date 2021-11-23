# include <stdio.h>

main () {

    int num=0, var=0;
    float precio=0;
    char letra=' ';
    char nombre[7]="Ana";

    num=8;var=7;
    precio=2.6f;
    letra='x';

    printf("El cuadrado de %d es %d\n", num ,num*num);
    printf("%d * %d = %d\n",num,num,num*num);
    printf("%d unidades a %.1f euros son %.2f\n",num ,precio,num*precio);
    printf("%s tiene %d anos\n",nombre, num);
    printf("La siguiente letra a \"%c\" es la \"%c\"\n",letra, letra+1);

}