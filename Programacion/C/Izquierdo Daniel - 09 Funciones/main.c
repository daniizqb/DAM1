#include <stdio.h>
#define TAMS 11
#define TAMA 10
#define INUM 0
#define FNUM 9

int strLenght (const char string[]);
main () {
    int i = 0, numRep = 0, aRep[TAMA], aNum [TAMA] = {2,5,7,5,2,8,4,0,9,1};
    short userNum = 0, bool = 0;
    char cadena [TAMS] = "";
    for (i = 0; i < TAMA; i++)
        aRep[i] = 0;

    printf("Introduce Cadena: ");
    scanf("%s",cadena);
    fflush(stdin);

    printf("La cadena contiene %d caracteres\n\n",strLenght(cadena));

    printf("Introduce un numero del %d al %d\n",INUM,FNUM);
    do {
        scanf("%hd",&userNum);
        fflush(stdin);
    } while (userNum < INUM || userNum > FNUM);


    printf("%hd %s",bool, bool?"uno":"cero");

    return 0;
}

int strLenght (const char string[]) {
    int i = 0, cont = 0;

    //Read string char by char until we find the end string char or we have overflow
    do {
        i++;
        cont++;
    } while (string[i] != '\0' && i <= TAMS);

    return cont;
}

void repeatBool (int aNum[]) {
    int i = 0, j = 0, vecesRep = 0, cont = 0, masRep = 0;

    for (i = 0; i < TAMA; i++) {
        for (j = 0; j < TAMA; j++) {
            if (i == aNum[j]) {
                cont++;
            }
        }
        masRep
    }
    return;
}