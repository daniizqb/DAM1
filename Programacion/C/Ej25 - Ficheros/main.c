#include <stdio.h>

int main() {
    char vCar = ' ';

    FILE *fich;
    fich = fopen("text.txt","w");
    fputc('x',fich);
    fputc('y',fich);
    fputc('z',fich);
    fclose(fich);

    fich = fopen("text.txt","r");

    rewind(fich);

    if (fich == NULL)
        puts("Error - El fichero no existe");
    else {
        vCar = fgetc(fich);
        while (!feof(fich)) {
            printf("%c", vCar);
            vCar = fgetc(fich);
        }
    }

    fclose(fich);

    return 0;
}
