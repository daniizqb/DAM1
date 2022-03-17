#include <stdio.h>

struct facturas {
    char numFactura [9];
    int codCliente;
    float neto;
};

void printFich (FILE *fich, struct facturas f1);

int main() {
    struct facturas f1 = {"",0,0};
    int i = 0;

    FILE *fich;
    fich=fopen("facturas.dat","rb+");

    fread(&f1,sizeof(struct facturas),1,fich);
    while (!feof(fich)) {
        if (f1.neto > 0 && f1.neto <= 200)
            f1.neto = f1.neto + (f1.neto * 10 / 100);
<<<<<<< HEAD
            fwrite(&f1.neto, sizeof(struct facturas), 1, fich);
        } else if (f1.neto > 200 && f1.neto <= 500) {
            f1.neto = f1.neto + (f1.neto * 5 / 100);
            fwrite(&f1.neto, sizeof(struct facturas), 1, fich);
        } else if (f1.neto > 500 && f1.neto <= 1000) {
            f1.neto = f1.neto + (f1.neto * 1 / 100);
            fwrite(&f1.neto, sizeof(struct facturas), 1, fich);
        }
=======
        else if (f1.neto > 200 && f1.neto <= 500)
            f1.neto = f1.neto + (f1.neto * 5 / 100);
        else if (f1.neto > 500 && f1.neto <= 1000)
            f1.neto = f1.neto + (f1.neto * 1 / 100);
            
        fseek(fich,sizeof (struct facturas) * -1,SEEK_CUR);
        fwrite(&f1, sizeof(struct facturas), 1, fich);
        i++;
        fseek(fich,sizeof (struct facturas) * i,SEEK_SET);
        
>>>>>>> 471fcff (14/03/22 14:16)
        fread(&f1,sizeof(struct facturas),1,fich);
    }
    rewind(fich);
    printFich(fich,f1);

    fclose(fich);
    return 0;
}

void printFich (FILE *fich, struct facturas f1) {
    fread(&f1,sizeof(struct facturas),1,fich);
    while (!feof(fich)) {
        printf("%s - %d - %.2f\n",f1.numFactura,f1.codCliente,f1.neto);
        fread(&f1,sizeof(struct facturas),1,fich);
    }
    rewind(fich);

    return;
    };