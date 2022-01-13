#include <stdio.h>
#define TAM 10
void impArray (int aNum [TAM], int i);

main () {
    int aNum [TAM] = {1,2,3,4,5,6,7,8,9,10},i = 0;

    impArray(aNum,i);
}

void impArray (int aNum [TAM], int i) {
    for (i=0;i<TAM;i++)
        printf("%d",aNum [i]);

    return;
}