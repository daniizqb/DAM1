import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        short capital = 0;

        do {
            System.out.println("Capita Inicial:");
            capital = Short.parseShort(sc.nextLine());
        } while (capital <= 0);

        short i = 0;
        final byte TAM = 100;
        float[] aInteres = new float[1];
        float interes = 0;

        do {
            System.out.println("Tipo de interes: (-1 para terminar)");
            interes = Float.parseFloat(sc.nextLine());
            //Recorrer el array entero para comprobar que el interes no esta repetido
            while (Arrays.binarySearch(aInteres, 0, i, interes) >= 0) {
                System.out.println("Interes repetido");
                interes = Float.parseFloat(sc.nextLine());
            }
            float[] af = new float[i + 1];
            Arrays.sort(aInteres);
            System.arraycopy(aInteres, 0, af, 0, i);
            af[i] = interes;
            aInteres = new float[i + 1];
            System.arraycopy(af, 0, aInteres, 0, i+1);
            i++;
        } while (interes != -1);

        System.out.println("Plazo de la inversion");
        byte plazo = Byte.parseByte(sc.nextLine());

        short tamf = (short) (plazo + 2);
        byte tamc = (byte) (i - 1);
        float[][] mInteres = new float[tamf][tamc];

        //Asignar a las dos primeras columnas los intereses y el capital
        for (i = 0; i < tamc; i++) {
            mInteres[0][i] = aInteres[i];
            mInteres[1][i] = capital;
        }
        //Calcular Beneficios por anyo
        for (i = 2; i < tamf; i++) {
            for (short j = 0; j < tamc; j++) {
                mInteres[i][j] = mInteres[i - 1][j] + (mInteres[i - 1][j] * mInteres[0][j] / 100);
            }
        }
        //Imprimir matriz con el formato correspondiente
        for (i = 0; i < tamf; i++) {
            for (short j = 0; j < tamc; j++) {
                if (i == 0)
                    System.out.printf("\t %.0f%%\t", mInteres[i][j]);
                else
                    System.out.printf("%.2f \t", mInteres[i][j]);
            }
            if (i == tamf - 1)
                System.out.print("-- Monto final");
            else
                System.out.println();
        }
    }
}