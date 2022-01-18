#include <stdio.h>
#define TAMS 11
#define TAMA 10
int strLenght (const char string[]);
void strBool (int aNum[], int *aRep[], short num, short *bool, int *repe);
int main() {
    int i = 0, repe = 0, aRep[TAMA], aNum [TAMA] = {2,5,7,5,2,8,4,0,9,1};
    for (i = 0; i < TAMA; i++)
        aRep[i] = 0;
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

    strBool(aNum,&aRep,userNum,&bool,&repe);
    printf("Digito mas veces repetido:\n");
    for (i=1; i<=repe; i++)
        printf("%d ",aRep[i]);
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

void strBool (int aNum[], int *aRep[], short num, short *bool, int *repe) {
    int i = 0, j = 0, k = 0, cont = 0, masRep = 0;

    k=0;repe=0;
    for (i = 0; i < TAMA; i++) {
        cont = 0;
        for (j = 0; j < TAMA; j++) {
            if (aNum[i] == j)
                cont++;
        }
        if (cont > *aRep[0]) {
            for (i = 0; i < TAMA; i++)
                *aRep[i] = 0;

            *aRep[0] = cont;
            *aRep[k] = j;
            *repe++;
            k++;
        } else if (cont == *aRep[0]) {
            *aRep[k] = j;
            *repe++;
        }
    }

    do {
        if (aNum[i] == num)
            *bool = 1;
        i++;
    } while (i < TAMA && bool == 0);

    return;
}