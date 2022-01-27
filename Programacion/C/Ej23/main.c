/*
 * nombre, edad, fecha nacimiento (estructura anidada q se componga de year month day
 * pedir por pantalla los datos y mostrarlos
 *
 * array de estructuras en el que guardemos 2 empleados
 * */

#include <stdio.h>
#include <locale.h>
#include <string.h>

#define TAMNOMBRE 20
#define TAMA 2

struct fecha {
    short year;
    short month;
    short day;
};

struct empleado {
    char nombre [TAMNOMBRE];
    short edad;
    float altura;
    struct fecha fechaNac;
};

int main() {
    short i =0;
    struct empleado aStuct [TAMA];
    struct empleado emp1 = {"",0,0,{0,0,0}};

    for (i = 0;i < TAMA;i++) {
        strcpy(aStuct[i].nombre,"");
        aStuct[i].edad = 0;
        aStuct[i].altura = 0;
        aStuct[i].fechaNac.year = 0;
        aStuct[i].fechaNac.month = 0;
        aStuct[i].fechaNac.day = 0;
    }

    setlocale(LC_CTYPE,"Spanish");

    for (i = 0;i < TAMA;i++) {
        printf("Introduce el nombre: \n");
        gets(emp1.nombre);
        fflush(stdin);

        printf("Introduce la edad: \n");
        scanf("%hd", &emp1.edad);
        fflush(stdin);

        printf("Introduce la altura: \n");
        scanf("%f", &emp1.altura);
        fflush(stdin);

        printf("\nFecha de nacimiento\n");
        printf("Introduce año: \n");
        scanf("%hd", &emp1.fechaNac.year);
        fflush(stdin);
        printf("Introduce mes: \n");
        scanf("%hd", &emp1.fechaNac.month);
        fflush(stdin);
        printf("Introduce dia: \n");
        scanf("%hd", &emp1.fechaNac.day);
        fflush(stdin);
    }

    for (i = 0;i < TAMA;i++) {
        printf("Nombre: %s, Edad: %hd, Altura %.2f, Fecha Nacimiento %hd-%hd-%hd", emp1.nombre, emp1.edad, emp1.altura,
               emp1.fechaNac.year, emp1.fechaNac.month, emp1.fechaNac.day);
    }

    return 0;
}
