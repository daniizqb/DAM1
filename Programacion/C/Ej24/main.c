#include <stdio.h>
#include <string.h>

#define TAM 26
#define TAMA 5

struct cadenas {
    char string[TAM];
};

int main() {
    short i = 0;
    struct cadenas array [TAMA];

    for (i = 0;i < TAMA;i++)
        strcpy(array[i].string,"");

    for (i = 0;i < TAMA;i++) {
        puts("Nombre");
        gets(array[i].string);
    }

    puts("Nombres");
    for (i = 0;i < TAMA;i++) {
        printf("%s, ",array[i].string);
    }

    return 0;
}