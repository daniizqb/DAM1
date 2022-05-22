import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float interes = 0;

        System.out.println("Capital Inicial:");
        short capital = Short.parseShort(sc.nextLine());
        System.out.println("Cuantos interes desea calcular:");
        short tam = Short.parseShort(sc.nextLine());
        for (short i = 0;i < tam;i++) {
            System.out.println("Interes:");
            interes = Float.parseFloat(sc.nextLine());
        }
        System.out.println("Plazo de la inversion");
        short plazo = Short.parseShort(sc.nextLine());


    }
}