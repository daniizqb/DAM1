#include <stdio.h>
#include <string.h>
#include <locale.h>

#define TAM 11

struct fichContent{
    char cad1[TAM];
    char cad2[TAM];
    char cad3[TAM];
};
int main() {
    struct fichContent f1 = {"","",""};

    FILE *fich;
    fich=fopen("fichero.bin","wb+");

    char cadena [TAM] = "";
    short cont = 0;

    setlocale(LC_CTYPE,"Spanish");

    strcpy(f1.cad1,"Caracola");
    strcpy(f1.cad2,"Gominola");
    strcpy(f1.cad3,"Caracola");
    fwrite(&f1,sizeof(struct fichContent),1,fich);
    strcpy(f1.cad1,"Hola");
    strcpy(f1.cad2,"Fierro");
    strcpy(f1.cad3,"Caracola");
    fwrite(&f1,sizeof(struct fichContent),1,fich);

    rewind(fich);

    puts("Introduzca cadena");
    gets(cadena);

    cont = 0;
    fread(&f1,sizeof(struct fichContent),1,fich);
    while (!feof(fich)) {
        if (!stricmp(f1.cad1,cadena))
            cont++;
        if (!stricmp(f1.cad2,cadena))
            cont++;
        if (!stricmp(f1.cad3,cadena))
            cont++;
        fread(&f1,sizeof(struct fichContent),1,fich);
    }

    fclose(fich);

    if (!strcmp(cadena,""))
        puts("Cadena introducida está vacía");
    else
        printf("La cadena %s se ha encontrado %hd veces\n",cadena,cont);

    return 0;
}
