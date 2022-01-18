#include <stdio.h>
#define TAMS 11
#define TAMA 10
int strLenght (const char string[]);
void strBool (int aNum[], short num, short *bool);
int main() {
    int i = 0, aNum [TAMA] = {2,5,7,5,2,8,4,0,9,1};
    short userNum = 0, bool = 0;
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

    printf("Digito mas veces repetido: %d",);

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

void strBool (int aNum[], short num, short *bool) {
    int i = 0, j = 0, aRep[TAMA], cont = 0, masRep = 0;

    for (i = 0; i < TAMA; i++)
        aRep[i] = 0;

    1 - add
    2 - equal
    3 - if gtr delete array


    for (i = 0; i < TAMA; i++) {
        for (j = 0; j < TAMA; j++) {
            if (aNum[i] == aNum[j])
        }
    }




    do {
        if (aNum[i] == num)
            *bool = 1;
        i++;
    } while (i < TAMA && bool == 0);

    return;
}