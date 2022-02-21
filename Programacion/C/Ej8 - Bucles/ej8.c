#include <stdio.h>
#include <locale.h>

#define ALT1 2
#define ALT2 20

main () {
    setlocale(LC_CTYPE,"Spanish");

    short alt = 0, cont1 = 0, cont2 = 0;

    printf("Altura (entre 2 y 20):");
    do {
        scanf("%hd",&alt);
        fflush(stdin);
    } while (alt<ALT1 || alt>ALT2);

    for (cont1=1;cont1<=alt;cont1++) {
        for (cont2=1;cont2<=cont1;cont2++)
            printf(" * ");
        printf("\n");
    }

    return 0;
}