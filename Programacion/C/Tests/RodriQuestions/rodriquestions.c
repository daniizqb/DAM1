#include <stdio.h>

main() {
    int num=0;
    int cont=0;
    printf("Pulsa 1 para contar y 2 para para el programa\n");
    while (num!=2) {
        scanf("%d", &num);
        fflush(stdin);
        if (num == 1)
            cont += 1;
        else;
    }
    printf("Rodria ha tocado la polla %d veces",cont);
    printf("Escribe cualquier numero para finalizar el programa");
    scanf("%d",num);
    return 0;
}

