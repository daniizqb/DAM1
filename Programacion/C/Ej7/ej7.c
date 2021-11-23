#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

//String size
#define TAM 6
//Porcentaje de subida de sueldo
#define P1 0.2f
#define P2 0.1f
#define P3 0.05f
#define P4 0.02f
//Rango de los salarios
#define R0 0
#define R1 1000
#define R2 3000
#define R3 5000

main() {
    setlocale(LC_CTYPE, "Spanish");

    char car = ' ';
    char codigo[TAM] = "";
    float salario = 0;
    //Bucle Principal
    do {
        system("cls");

        printf("Código:");
        scanf("%s", codigo);
        fflush(stdin);

        printf("\nSalario:");
        //Controlar que el salario es valido
        do {
            scanf("%f", &salario);
            fflush(stdin);
        } while (salario < 0);

        printf("\nEmpleado con código %s", codigo);
        printf("\n\tSalario actual: %.2f", salario);

        if (salario > R0 && salario <= R1) {
            salario = (salario + (salario * P1));
            printf("\n\tSalario nuevo: %.2f", salario);
        } else if (salario <= R2) {
            salario=(salario+(salario*P2));
            printf("\n\tSalario nuevo: %.2f", salario);
        } else if (salario <= R3) {
            salario=(salario+(salario*P3));
            printf("\n\tSalario nuevo: %.2f", salario);
        } else if (salario > R3) {
            salario=(salario + (salario * P4));
            printf("\n\tSalario nuevo: %.2f\n", salario);
        }
        //Controlar que el caracter sea valido
        do {
            printf("\nDesea introducir otro empleado? (S/N)");
            scanf("%c", &car);
            fflush(stdin);
        } while (car != 'S' && car != 's' && car != 'N' && car != 'n');

    } while (car == 'S' || car == 's');

    return 0;
}