import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Capita Inicial:");
        short capital = Short.parseShort(sc.nextLine());

        short i = 0;
        final byte TAM = 100;
        float[] aInteres = new float[TAM];
        float interes = 0;

        do {
            System.out.println("Tipo de interes: (-1 para terminar)");
            interes = Float.parseFloat(sc.nextLine());
            //Recorrer el array entero para comprobar que el interes no esta repetido
            if (Arrays.binarySearch(aInteres,(TAM-(i+1)),TAM,interes) >= 0) {
                    System.out.println("Interes repetido");
                    i--;
            }
            aInteres[i] = interes;
            i++;
        } while (i < TAM && interes != -1);

        System.out.println("Plazo de la inversion");
        byte plazo = Byte.parseByte(sc.nextLine());

        short tamf = (short) (plazo+2);
        byte tamc = (byte) (i-1);
        float[][] mInteres = new float[tamf][tamc];

        //Asignar a las dos primeras columnas los intereses y el capital
        for (i = 0; i < tamc; i++) {
            mInteres[0][i] = aInteres[i];
            mInteres[1][i] = capital;
        }
        //Calcular Beneficios por anyo
        for (i = 2; i < tamf; i++) {
            for (short j = 0; j < tamc; j++) {
                mInteres[i][j] = mInteres[i-1][j] + (mInteres[i-1][j] * mInteres[0][j] / 100);
            }
        }
        //Imprimir matriz con el formato correspondiente
        for (i = 0; i < tamf; i++) {
            for (short j = 0; j < tamc; j++) {
                if (i == 0)
                    System.out.printf("\t %.0f%%\t",mInteres[i][j]);
                else
                    System.out.printf("%.2f \t",mInteres[i][j]);
            }
            if (i == tamf - 1)
                System.out.print("-- Monto final");
            else
                System.out.println();
        }
    }
}