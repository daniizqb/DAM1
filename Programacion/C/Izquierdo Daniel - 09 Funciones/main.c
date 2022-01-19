#include <stdio.h>
#define TAMS 11
#define TAMA 10
#define INUM 0
#define FNUM 9

int strLenght (const char string[]);
void strBool (int aNum[], int aRep[], short numToFind, int *numRep, short *bool);

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

    strBool(aNum,aRep,userNum,&numRep,&bool);

    printf("Digito mas veces mas reptido:\n");
    for (i = 0; i <= numRep; i++)
        printf("%d\n",aRep[i]);
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

void strBool (int aNum[], int aRep[], short numToFind, int *numRep, short *bool) {
    int i = 0, j = 0, vecesRep = 0, masRep = 0, cont = 0, cont2 = 0;

    //Read nums (0 - 9) and check if they are in the array
    for (i = INUM; i <= FNUM; i++) {
        cont = 0;
        for (j = 0; j < TAMA; j++) {
            if (aNum[j] == i)
                cont++;
            if (aNum[j] == numToFind)
                *bool = 1;
        }

        //Check if the num we are checking is more repeated than the most repeated one
        if (cont > vecesRep) {
            vecesRep = cont;
            masRep = i;
            cont2++;
        }
    }

    aRep[0] = masRep;
    *numRep = 1;
    if (cont2 > 1)
        for (i = INUM; i <= FNUM; i++) {
            cont = 0;
            for (j = 0; j < TAMA; j++){
                if (aNum[j] == i)
                    cont++;
            }

            if (cont == vecesRep && aNum[i] != masRep) {
                aRep[*numRep] = i;
                *numRep++;
            }
        }


    return;
}