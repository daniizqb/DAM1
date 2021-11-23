#include <stdio.h>

int main() {

    int num1, num2, num3, car=0;

    printf("Introduce numero de 2 a 20");
    do {
        scanf("%d",&car);
        fflush(stdin);
    } while (car<2 || car>20);

    for (num1=1;num1<=car;num1++) {
       for (num2=1;num2<=car-num1;num2++)
           printf(" ");
       for (num3=1;num3<=num1*2-1;num3++)
           printf("*");
        printf("\n");
    }

    return 0;
}
