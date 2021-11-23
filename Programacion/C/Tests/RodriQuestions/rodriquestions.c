#include <stdio.h>
#include <stdlib.h>

main() {
    short num=0;
    int cont=0;
    printf("Pulsa 1 para contar y 2 para para el programa\n");

    do {
        scanf("%hd",&num);
        fflush(stdin);
        cont++;
    } while (num == 1);

    printf("Rodri a ha tocado la polla %d veces\n",cont);
    system("pause");

    return 0;
}

