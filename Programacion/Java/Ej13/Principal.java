import java.util.Locale;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        System.out.println("El dia obtenido es: " + obtenerDia().toUpperCase());
    }

    public static String obtenerDia() {
        Scanner sc = new Scanner(System.in);
        String dia;
        boolean f;

        f = false;
        do {
            System.out.println("Dia de la semana");
            dia = sc.nextLine();

            try {
                ClaseEnum.valueOf(dia.toUpperCase());
                f = true;
            } catch (IllegalArgumentException e) {
                System.out.println("Dia incorrecto");
            }
        } while (!f);

        return dia;
    }
}
