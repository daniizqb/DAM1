#include <stdio.h>
#define TAMS 11
#define TAMA 10
int strLenght (const char string[]);
void strBool (short aNum[],short num, short *bool);
int main() {
    int i = 0;
    short aNum [TAMA] = {2,5,7,5,2,8,4,0,9,1}, userNum = 0, bool = 0;
    char cadena [TAMS] = "";

    printf("Introduce Cadena: ");
    scanf("%s",cadena);
    fflush(stdin);

    printf("La cadena contiene %d caracteres\n\n",strLenght(cadena));

    printf("Introduce un numero del 0 al 9\n");
    do {
        scanf("%hd",&userNum);
        fflush(stdin);
    } while (userNum < 0 || userNum > 9);

    strBool(aNum,userNum,&bool);
    printf("%hd %s",bool, bool?"uno":"cero");

    return 0;
}

int strLenght (const char string[]) {
    int i = 0, cont = 0;
    do {
        i++;
        cont++;
    } while (string[i] != '\0' && i <= TAMS);

    return cont;
}

void strBool (short aNum[],short num, short *bool) {
    int i = 0;

    do {
        if (aNum[i] == num)
            *bool = 1;
        i++;
    } while (i < TAMA && bool == 0);

    return;
}