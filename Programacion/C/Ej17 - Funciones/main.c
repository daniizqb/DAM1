#include <stdio.h>
#define TAM 10
void impArray (int aNum [], int tam, int i);

main () {
    int aNum [TAM] = {1,2,3,4,5,6,7,8,9,10},i = 0;

    impArray(aNum,TAM, i);

    return 0;
}

void impArray (int aNum [], int tam, int i) {
    for (i=0;i<TAM;i++)
        printf("%d",aNum [i]);

    return;
}