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

    short userNum = 0, cont = 0, regCont = 0, sumatorio = 0;
    struct data dato = {"",0};


    strcpy(dato.nombre,"Suma:");
    dato.num = 0;
    fwrite(&dato,sizeof(dato),1,fich);
    regCont++;

    strcpy(dato.nombre,"Numero:");

    do {
        printf("Numero: ");
        scanf("%hd",&userNum);
        fflush(stdin);
        if (userNum == -1) {
            cont++;
            if (cont == 1) {
                strcpy(dato.nombre, "Resta:");
                dato.num = 0;
                fwrite(&dato, sizeof(dato), 1, fich);

                fseek(fich, desplz(-regCont), SEEK_CUR);
                fread(&dato, sizeof(dato), 1, fich);
                dato.num = sumatorio;
                fwrite(&dato, sizeof(dato), 1, fich);

                strcpy(dato.nombre, "Numero:");
                sumatorio = 0;
            }
            else if (cont == 2) {
                strcpy(dato.nombre, "Multiplicacion:");
                dato.num = 0;
                fwrite(&dato, sizeof(dato), 1, fich);

                fseek(fich, desplz(-regCont), SEEK_CUR);
                fread(&dato, sizeof(dato), 1, fich);
                dato.num = sumatorio;
                fwrite(&dato, sizeof(dato), 1, fich);

                strcpy(dato.nombre, "Numero:");
                sumatorio = 0;
            }
        } else {
            dato.num = userNum;
            sumatorio = sumatorio + dato.num;
            fwrite(&dato,sizeof (dato),1,fich);
            regCont++;
        }
    } while (cont<3);

    fseek(fich, 0,SEEK_SET);
    fread(&dato,sizeof(dato),1,fich);
    while (!feof(fich)) {
        printf("%s - %hd\n",dato.nombre,dato.num);
        fread(&dato,sizeof(dato),1,fich);
    }

    return 0;
}
