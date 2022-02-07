#include <stdio.h>
#include <string.h>

#define TAM 12

short cadInSubcad (char mainString [], char subString [], char auxString []);

main () {
    char string [TAM] = "", subString [TAM] = "", auxString [TAM] = "";

    printf("Introduce una cadena (max %d caracteres): ",TAM-1);
    gets(string);

    printf("Introduce una subcadena (max %d caracteres): ",TAM-1);
    gets(subString);

    printf("La subcadena \"%s\"aparece %hd veces en la cadena \"%s\"",subString, cadInSubcad(string,subString,auxString),string);
    puts("Fin del proceso");

    return 0;
}

short cadInSubcad (char mainString [], char subString [], char auxString []) {
    short contCadena = 0;
    short max = 0;

    strcpy(auxString, mainString);
    max=strlen(subString);

    while(strstr(auxString, subString) != NULL){
        contCadena++;
        strcpy(auxString, strstr(auxString, subString));
        memset(auxString, ' ', max);
    }

    return contCadena;
}
