#include <stdio.h>
#include <string.h>

#define desplz(n) sizeof(dato)*(long)(n-1)

struct data {
    char nombre [16];
    short num;
};
int main() {
    FILE *fich;
    fich = fopen("text.txt","wb+");

    short userNum = 0, cont = 0;
    struct data dato = {"",0};


    strcpy(dato.nombre,"Suma:");
    dato.num = 0;
    fwrite(&dato,sizeof(dato),1,fich);

    strcpy(dato.nombre,"Numero:");
    while (userNum != -1) {
        printf("Numero:");
        scanf("%hd",&userNum);
        fflush(stdin);
        dato.num = userNum;
        fwrite(&dato,sizeof(dato),1,fich);
    }

    /*do {
        printf("Numero: ");
        scanf("%hd",&userNum);
        fflush(stdin);
        if (userNum == -1) {
            cont++;
            if (cont == 1)
                strcpy(dato.nombre,"Resta:");
            else
                strcpy(dato.nombre,"Multiplicacion:");
        } else if (userNum >= 0) {
            dato.num = userNum;
        }
        fwrite(&dato,sizeof (dato),1,fich);
    } while (cont<3);*/

    fseek(fich, 0,SEEK_SET);
    fread(&dato,sizeof(dato),1,fich);
    while (!feof(fich)) {
        printf("%s - %hd\n",dato.nombre,dato.num);
        fread(&dato,sizeof(dato),1,fich);
    }

    return 0;
}
