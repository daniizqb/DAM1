#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#define DIV 60
#define TAM 11
main() {

    setlocale(LC_CTYPE, "Spanish");
    int seg=0;
    int auxSec=0;
    int hora=0;
    int min=0;
    float percent=0;
    char car=' ';
    char literal[TAM]=" ";

    printf("Introduzca una letra y un literal <max %d caracteres> a la vez:\n",TAM-1);
    scanf("%c %s",&car,literal);
    fflush(stdin);
    printf("\nEl literal y el caracter introducidos son %s y %c respectivamente\n",literal,car);

    printf("\nIntroduzca segundos: ");
    scanf("%d",&seg);
    fflush(stdin);
	
    auxSec=seg;
    min=seg/DIV;
    seg=seg%DIV;
    hora=min/DIV;
    min=min%DIV;

    printf("\n%d segundos son: %d horas %d minutos y %d segundos\n",auxSec,hora,min,seg);

    printf("\nIntroduzca un porcentaje: ");
    scanf("%f",&percent);
	fflush(stdin);
    printf("\nEl porcentaje introducido es: %.1f%%\n",percent);

	system("pause");

    return 0;

}
