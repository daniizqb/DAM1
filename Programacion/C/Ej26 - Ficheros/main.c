#include <stdio.h>
#include <string.h>

struct cd {
    char nombre [25];
    char titulo [30];
    short numCanc;
};

int main() {
    struct cd cd1 = {"","",0};

    FILE *fich;
    fich = fopen("text.txt","r+");

    strcpy(cd1.nombre, "AC/DC");
    strcpy(cd1.titulo, "Black in Black");
    cd1.numCanc = 8;
    fwrite(&cd1,sizeof(struct cd),1,fich);

    strcpy(cd1.nombre, "Scorpions");
    strcpy(cd1.titulo, "Blackout");
    cd1.numCanc = 13;
    fwrite(&cd1,sizeof(struct cd),1,fich);

    strcpy(cd1.nombre, "Whitesnake");
    strcpy(cd1.titulo, "Forevermore");
    cd1.numCanc = 11;
    fwrite(&cd1,sizeof(struct cd),1,fich);

    rewind(fich);

    fread(&cd1,sizeof(struct cd),1,fich);
    while (!feof(fich)) {
        printf("%s - %s - %hd\n",cd1.nombre,cd1.titulo,cd1.numCanc);
        fread(&cd1,sizeof(struct cd),1,fich);
    }

    fclose(fich);

    return 0;
}
