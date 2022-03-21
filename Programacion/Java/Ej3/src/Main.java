/*
* Num de elementos del array: 15
* Numero: 3
* Numero: 14
* ...
* Numero: 7
* Rellenar array con los multiplos de 7
* */
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        final byte NUMCOMP = 7;

        short i = 0;
        Scanner sc = new Scanner(System.in);

        System.out.println("Num de elementos del array:");
        final short TAM = Short.parseShort(sc.nextLine());
        short aNum [] = new short [TAM];

        while (i < TAM) {
            System.out.println("Numero:");
            short num = Short.parseShort(sc.nextLine());
            if (num % NUMCOMP == 0) {
                aNum[i] = num;
                i++;
            }
        }

        for (i = 0;i < TAM;i++) {
            System.out.println(i + " " + aNum[i]);
        }
    }
}
