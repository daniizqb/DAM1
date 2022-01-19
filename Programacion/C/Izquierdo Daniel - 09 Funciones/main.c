#include <stdio.h>
#define TAMS 11
#define TAMA 10
#define INUM 0
#define FNUM 9

int strLenght (const char string[]);
void repeatBool (int aNum[], int aRep[], int *repetidos, short numToFind, short *bool);

main () {
    int i = 0, *repetidos = 0, aRep[TAMA], aNum [TAMA] = {2,5,7,5,2,8,4,0,9,1};
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

    repeatBool(aNum,aRep,&repetidos, userNum,&bool);

    printf("\n%hd %s\n",bool, bool?"uno":"cero");

    puts("Digitos: ");
    for (i = 0; i < repetidos; i++)
        printf("%d\n",aRep[i]);

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

void repeatBool (int aNum[], int aRep[], int *repetidos, short numToFind, short *bool) {
    int i = 0, j = 0, k = 0, cont = 0, vecesRep = 0;
    short flag = 0;

    for (i = INUM; i < FNUM; i++) {
        cont = 0;
        for (j = 0; j < TAMA; j++) {
            if (aNum[j] == numToFind && !flag) {
                *bool = 1;
                flag = 1;
            }
            if (i == aNum[j]) {
                cont++;
            }
        }
        //aNum[i] content is more repeated than other num
        if (cont > vecesRep) {
            k=0;*repetidos=0;
            vecesRep = cont;
            aRep[k] = i;
            k++;
            *repetidos= *repetidos + 1;
        } else if (cont == vecesRep) {
            aRep[k] = i;
            k++;
            *repetidos= *repetidos + 1;
        }
    }

    return;
}