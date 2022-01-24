#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define randomize srand(time(NULL))
#define random(n) (rand()%n)
#define NUMMAX 5

int main() {
    short userNum = 0, cpuNum = 0, pares = 0;
    char userChoise = ' ';

    randomize;

    puts("Elige Pares [P] | Nones [N]");
    do {
        scanf("%hd",&userChoise);
        fflush(stdin);
    } while (userChoise == 'P' || userChoise == 'N');

    printf("Elige un numero (0-%d)",NUMMAX);
    do {
        scanf("%hd",&userNum);
        fflush(stdin);
    } while (userNum > NUMMAX || userNum < 0);

    cpuNum = random(NUMMAX + 1);
    pares = (userNum + cpuNum) % 2;

    printf("Usuario: %hd | Maquina %hd\n",userNum,cpuNum);

    if (userChoise == 1)
        printf("Ha ganado %s",pares?"la maquina":"el usuario");
    else
        printf("Ha ganado %s",!pares?"la maquina":"el usuario");

    return 0;
}