#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <locale.h>
#include <string.h>

#define randomize srand(time(NULL))
#define random(n) (rand()%n)
#define NUMMAX 5

int main() {
    short userNum = 0, cpuNum = 0, pares = 0;
    char userChoise [6] = "";

    setlocale(LC_CTYPE,"Spanish");

    randomize;

    puts("Elige Pares | Nones");
    scanf("%s",userChoise);
    fflush(stdin);

    printf("Elige un numero (0-%d): ",NUMMAX);
    do {
        scanf("%hd",&userNum);
        fflush(stdin);
    } while (userNum > NUMMAX || userNum < 0);

    cpuNum = random((NUMMAX + 1));
    pares = (userNum + cpuNum) % 2;

    printf("Usuario: %hd | Maquina %hd\n",userNum,cpuNum);

    if (!stricmp(userChoise, "Pares"))
        printf("Ha ganado %s",pares?"la maquina":"el usuario");
    else
        printf("Ha ganado %s",!pares?"la maquina":"el usuario");

    return 0;
}