#include <stdio.h>
#include <locale.h>

#define TAM 5
main() {
    setlocale(LC_CTYPE,"Spanish");

    int i, arrayN [TAM];

    for (i=0;i<TAM;i++)
        arrayN [i] = 0;

    printf("Rellena el array:\n");

    for (i=0;i<TAM;i++) {
        scanf("%d", &arrayN[i]);
        fflush(stdin);
    }

    printf("Todas las posiciones del array:\n");

    for (i=0;i<TAM;i++)
        printf("%d\n",arrayN [i]);

    printf("Posiciones impares:\n");

    for (i=1;i<TAM;i+=2)
        printf("%d\n",arrayN [i]);

    return 0;
}
