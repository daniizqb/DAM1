import java.util.Arrays;
import java.util.Scanner;

public class Ej3 {
    public static void main(String[] args) {
        final int TAM = 6;
        int[] aNum = new int[TAM];
        Scanner sc = new Scanner(System.in);
        byte i = 0;

        do {
            System.out.println("Introduce numero");
            try {
                aNum[i] = Integer.parseInt(sc.nextLine());
                i++;
            } catch (NumberFormatException nfe) {
                System.out.println("Numero invalido");
            }
        } while (i < TAM);

        Arrays.sort(aNum);
        System.out.println("El numero mayor es: " + aNum[TAM-1]);
    }
}
