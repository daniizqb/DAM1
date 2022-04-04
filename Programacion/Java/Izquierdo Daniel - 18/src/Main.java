import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Capita Inicial:");
        short capital = Short.parseShort(sc.nextLine());

        System.out.println("Numero de intereses que desea calcular");
        byte tamc = Byte.parseByte(sc.nextLine());

        System.out.println("Plazo de la inversion");
        byte plazo = Byte.parseByte(sc.nextLine());

        short tamf = (short) (plazo+2);
        float[][] mInteres = new float[tamf][tamc];

        for (int i = 0;i < tamc; i++){
            System.out.println("Tipo de interes:");
            float interes = Float.parseFloat(sc.nextLine());
            mInteres[0][i] = interes;
            mInteres[1][i] = capital;
        }

        for (int i = 2; i < tamf; i++) {
            for (int j = 0; j < tamc; j++) {
                mInteres[i][j] = mInteres[i-1][j] + (mInteres[i-1][j] * mInteres[0][j] / 100);
            }
        }

        for (int i = 0; i < tamf; i++) {
            for (int j = 0; j < tamc; j++) {
                System.out.printf("%.2f \t",mInteres[i][j]);
            }
            //System.out.println("Fila" + i);
            System.out.print("\n");
        }

        System.out.print("-- Monto final");

    }
}