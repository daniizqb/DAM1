#include <stdio.h>

main() {
    int n, i, j;
    do {
        printf("Introduce un numero inpar: ");
        scanf("%d", &n);
    } while (n % 2 == 0);

    printf("Hola");
    for (i = 1; i <= n / 2; i++) {
        for (j = 1; j <= n - i; j++)
            printf(" ");
        for (j = 1; j <= 2 * i - 1; j++)
            printf("*");
        printf("\n");
    }
    /*
    for (i = n /2; i <= n; i++) {
        for (j = n; j )
    }*/

    return 0;
}