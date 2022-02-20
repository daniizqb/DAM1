#	include <stdio.h>
#	include <string.h>
#	include <locale.h>
#	define desplz(n) sizeof(sum)*(long)(n-1)
#	define TAM 25
struct todo{
    char ejem[TAM];
    int num1;
};


main(){

    FILE *fich;
    fich=fopen("operaciones.bin","wb+");
    struct todo sum={"",0};
    struct todo resta={"",0};
    struct todo mul={"",0};
    int num=0;


    printf("Suma\n");
    printf("Numero:");
    scanf("%d",&num);
    fflush(stdin);
    strcpy(sum.ejem,"Suma:");

    while (num != -1){
        sum.num1=sum.num1+num;
        fseek(fich, desplz(1),SEEK_SET);
        fwrite(&sum, sizeof(sum),1,fich);
        printf("Numero:");
        scanf("%d",&num);
        fflush(stdin);

    }


    fseek(fich, sizeof(sum),SEEK_SET);
    fread(&sum, sizeof(sum),1,fich);

    num=0;
    printf("Resta\n");
    printf("Numero:");
    scanf("%d",&num);
    fflush(stdin);
    strcpy(resta.ejem,"Resta:");

    while (num != -1){
        resta.num1=resta.num1-num;
        fseek(fich, desplz(2),SEEK_SET);
        fwrite(&resta, sizeof(resta),1,fich);
        printf("Numero:");
        scanf("%d",&num);
        fflush(stdin);

    }


    fseek(fich, sizeof(resta),SEEK_SET);
    fread(&resta, sizeof(resta),1,fich);


    num=0;
    printf("Multi\n");
    printf("Numero:");
    scanf("%d",&num);
    fflush(stdin);
    strcpy(mul.ejem,"Mul:");

    while (num != -1){
        mul.num1=mul.num1*num;
        fseek(fich, desplz(3),SEEK_SET);
        fwrite(&mul, sizeof(mul),1,fich);
        printf("Numero:");
        scanf("%d",&num);
        fflush(stdin);

    }


    fseek(fich, sizeof(mul),SEEK_SET);
    fread(&mul, sizeof(mul),1,fich);


    printf("Suma:%d\n",sum.num1);
    printf("Resta:%d\n",resta.num1);
    printf("Multiplicacion:%d",mul.num1);



    fclose(fich);

    return 0;
}