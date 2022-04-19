import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Scanner;

public class ArrayNumeros {
    private int[] numeros = new int[10];

    public void rellenarArray() {
        Scanner sc = new Scanner(System.in);

        for (int i = 0; i < 10; i++) {
            System.out.println("Introduce numero:");
            numeros[i] = Integer.parseInt(sc.nextLine());
        }
    }

    public void numDeCadaElemento() {
        Scanner sc = new Scanner(System.in);
        short cont;

        Arrays.sort(numeros);
        for (int i = 0; i < 10; i++) {
            cont = 0;
            for (int j = 0; j < 10; j++) {
                if (numeros[i] == numeros[j])
                    cont++;
            }
            if (i+1 < 10 && numeros[i+1] != numeros[i])
                System.out.println(numeros[i] + " - " + cont);
        }
    }

    @Override
    public String toString() {
        return "ArrayNumeros{" +
                "numeros=" + Arrays.toString(numeros) +
                '}';
    }
}


