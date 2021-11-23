#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

#define CARAC '='
#define TAMC 20
int main() {
    int i=0, j=0, k=0, numTabla=0, tamTabla=0, sumatorio=0, resulMul=0;

    setlocale(LC_CTYPE,"Spanish");

    printf("Introduce número de tablas (0 para teminar):\n");

    do {
        scanf("%d",&numTabla);
        fflush(stdin);
    } while (numTabla<0);

    while (numTabla!=0) {
        printf("Introduce tamaño de la tabla:\n");

        do {
            scanf("%d",&tamTabla);
            fflush(stdin);
        } while (tamTabla<=0);

        printf("\n");

        for (i=1;i<=numTabla;i++) {
            for (j=1;j<=tamTabla;j++) {
                printf("%d X %d : %d\n",i ,j, resulMul=i*j);
                sumatorio+=resulMul;
            }
            for (k=1;k<=TAMC;k++) {
                printf("%c",CARAC);
            }
            printf("\n\n");
        }

        printf("Resultado acumulado: %d\n\n",sumatorio);

        system("pause");
        system("cls");
        sumatorio=0;

        printf("Introduce número de tablas (0 para teminar):\n");

        do {
            scanf("%d",&numTabla);
            fflush(stdin);
        } while (numTabla<0);
    }

    printf("Fin del proceso\n");
    system("pause");

    return 0;
}
