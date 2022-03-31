import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        float interes = 0;

        System.out.println("Capita Inicial:");
        short capital = Short.parseShort(sc.nextLine());
        System.out.println("Tipo de interes: (0 para terminar)");
        do {
            interes = Float.parseFloat(sc.nextLine());
        } while (interes != 0);
        System.out.println("Plazo de la inversion");
        short plazo = Short.parseShort(sc.nextLine());
    }
}