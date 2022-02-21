#include <stdio.h>
#define TAM 10
#define UNO 1
#define DOS TAM*UNO
int main() {
    //Definir variables
    short i=0, j=0, mayor=0, menor=0, aNum[]={0,7,100,14,17,200,0,9,200,0} ,aCheck[TAM];
    //Inicializar array
    for (i=0;i<TAM;i++) {
        aCheck[i]=0;

    }
    //Asignar la primera posicion del array al mayor y menor para que a la hora de compararlos partamos de la primera posicion del array
    mayor=aNum[0];
    menor=aNum[0];
    //Comprobar que numero del array es mayor y cual menor
    for (i=0;i<TAM;i++)
        if (aNum[i]>mayor)
            mayor = aNum[i];
        else if (aNum[i]<menor)
            menor = aNum[i];
    //Mostrar el mayor y en que posiciones se encuentran Opcion 1
    /*
    printf("El mayor es %hd y el menor %hd, en las posiciones:\n",mayor,menor);
    for (i=0;i<TAM;i++) {
        if (aNum[i] == mayor)
            printf("%hd - mayor\n", i);
        else if (aNum[i] == menor)
            printf("%hd - menor\n", i);
    }
    */
    //Asignar las posiciones a los arrays
    for (i=0;i<TAM;i++) {
        if (aNum[i] == mayor || aNum[i] == menor) {
            aCheck[j] = i;
            j++;
        }
    }
    //Mostrar el mayor y en que posiciones se encuentran Opcion 1
    printf("El mayor es %hd y el menor %hd, en las posiciones:\n",mayor,menor);

    for (i=0;i<j;i++) {
        if (aNum[aCheck[i]] == mayor)
            printf("%hd - mayor\n",aCheck[i]);
        else
            printf("%hd - menor\n",aCheck[i]);
    }

    return 0;
}