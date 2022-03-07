#include <stdio.h>
#include <string.h>
#define NUMREG 9

struct facturas {
    char numFactura [9];
    int codCliente;
    float neto;
};

void printFich (FILE *fich, struct facturas f1);

int main() {
    struct facturas f1 = {"",0,0};

    FILE *fich;
    fich=fopen("facturas.dat","rb+");

    printFich(fich,f1);

    fseek(fich,(NUMREG - 1) * (sizeof (struct facturas)),SEEK_SET);
    fread(&f1,sizeof(struct facturas),1,fich);
    printf("Registro %d: ",NUMREG);
    printf("%s - %d - %f\n",f1.numFactura,f1.codCliente,f1.neto);

    strcpy(f1.numFactura,strrev(f1.numFactura));
    fwrite(&f1,sizeof(struct facturas),1,fich);
    printf("Registro %d con el numero de factura revertido: ",NUMREG);
    printf("%s - %d - %f\n",f1.numFactura,f1.codCliente,f1.neto);

	fclose(fich);

    return 0;
}

void printFich (FILE *fich, struct facturas f1) {
    fread(&f1,sizeof(struct facturas),1,fich);
    while (!feof(fich)) {
        printf("%s - %d - %f\n",f1.numFactura,f1.codCliente,f1.neto);
        fread(&f1,sizeof(struct facturas),1,fich);
    }
    rewind(fich);

    return;
};
