#include <stdio.h>
#include <locale.h>
main() {
	
	setlocale(LC_CTYPE, "Spanish");
    int base=0,altura=0;
    float area=0;

    printf("Base:");
    scanf("%d",&base);
    fflush(stdin);
    printf("Altura:");
    scanf("%d",&altura);
    fflush(stdin);
    area=(float)(base*altura)/2;
    printf("El área del triángulo de base %d y altura %d es %.1f",base,altura,area);

}

