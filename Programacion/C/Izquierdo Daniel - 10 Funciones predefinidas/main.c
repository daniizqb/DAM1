#include <stdio.h>
#include <string.h>

#define TAM 12

short cadInSubcad (char mainString [], char subString []);

main () {
    char string [TAM] = "", subString [TAM] = "";

    printf("Introduce una cadena (max %d caracteres): ",TAM-1);
    gets(string);

    printf("Introduce una subcadena (max %d caracteres): ",TAM-1);
    gets(subString);

    printf("La subcadena \"%s\" aparece %hd veces en la cadena \"%s\" ",subString, cadInSubcad(string,subString),string);
    puts("Fin del proceso");

    return 0;
}

short cadInSubcad (char mainString [], char subString []) {
    short contCadena = 0;
    short max = 0;
    char auxString [TAM] = "";

    strcpy(auxString, mainString);
    max=strlen(subString);

    while(strstr(auxString, subString) != NULL){
        contCadena++;
        strcpy(auxString, strstr(auxString, subString));
        memset(auxString, ' ', max);
    }

    return contCadena;
}
