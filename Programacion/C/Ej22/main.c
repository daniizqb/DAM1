#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define randomize srand(time(NULL))
#define random(n) (rand()%n)
#define NUMMAX 5

int main() {
    short userChoise = 0, userNum = 0, cpuNum = 0, nones = 0;;

    randomize;

    puts("Elige Pares = 1 | Nones = 0");
    do {
        scanf("%hd",&userChoise);
    } while (userChoise > 1 || userChoise < 0);

    printf("Elige un numero (0-%d)",NUMMAX);
    do {
        scanf("%hd",&userNum);
    } while (userNum > NUMMAX || userNum < 0);

    cpuNum = random(NUMMAX + 1);
    nones = (userNum + cpuNum) % 2;

    printf("Usuario: %hd | Maquina %hd\n",userNum,cpuNum);

    if (userChoise == 1)
        printf("Ha ganado %s",nones?"la maquina":"el usuario");
    else
        printf("Ha ganado %s",!nones?"la maquina":"el usuario");

    return 0;
}