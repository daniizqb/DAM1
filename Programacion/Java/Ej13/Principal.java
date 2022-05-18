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
        /*
        ClaseEnum[] dias = ClaseEnum.values();
        int i = 0;
        do {
            System.out.printf("%s\n",i == 0 ? "Dia de la semana" : "Dia incorrecto");
            dia = sc.nextLine();

            i = 0;
            f = false;
            do {
                if (dia.toUpperCase().equals(dias[i].name())) {
                    f = true;
                }
                i++;
            } while (!f && i <= dias.length-1);
        } while (!f);*/

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
