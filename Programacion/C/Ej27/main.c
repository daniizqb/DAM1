#include <stdio.h>
#include <string.h>

struct data {
    char nombre [16];
    short num;
};
int main() {
    short userNum = 0, cont = 0;
    struct data dato = {"",0};

    FILE *fich;
    fich = fopen("text.txt","r+");

    strcpy(dato.nombre,"Suma:");
    dato.num = 0;
    fwrite(&dato,sizeof (struct data),1,fich);
    do {
        printf("Numero: ");
        scanf("%hd",&userNum);
        if (userNum == -1) {
            cont++;
            if (cont == 1)
                strcpy(dato.nombre,"Resta:");
            else
                strcpy(dato.nombre,"Multiplicacion:");
        } else if (userNum <= 0) {
            strcpy(dato.nombre, "Numero:");
            dato.num = userNum;
        }
        fwrite(&dato,sizeof (struct data),1,fich);
    } while (cont<3);

    rewind(fich);

    fread(&dato,sizeof(struct data),1,fich);
    while (!feof(fich)) {
        printf("%s - %hd\n",dato.nombre,dato.num);
        fread(&dato,sizeof(struct data),1,fich);
    }

    return 0;
}
