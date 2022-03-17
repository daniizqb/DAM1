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
        short [] aNum = new short [15];
        short i = 0, num = 0;
        Scanner sc = new Scanner(System.in);

        do {
            System.out.println("Numero:");
            num = Short.parseShort(sc.nextLine());
            if (num % 7 == 0) {
                aNum[i] = num;
                i++;
            }
        } while (i < 15);

        for (i = 0;i < 15;i++) {
            System.out.println(i + " " + aNum[i]);
        }
    }
}
