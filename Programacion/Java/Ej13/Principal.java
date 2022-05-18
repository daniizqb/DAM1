import java.util.Locale;
import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        /*ClaseEnum diaM = ClaseEnum.TUESDAY;
        ClaseEnum diaJ = ClaseEnum.THURSDAY;
        System.out.println(diaM.name());
        System.out.println(diaJ.name());

        System.out.println(diaM.ordinal());
        ClaseEnum[] dias = ClaseEnum.values();

        for (ClaseEnum d: dias) {
            System.out.println(d);
        }*/

        System.out.println("El dia obtenido es: " + obtenerDia().toUpperCase());
    }

    public static String obtenerDia() {
        ClaseEnum[] dias = ClaseEnum.values();

        Scanner sc = new Scanner(System.in);
        String dia;
        boolean f;
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
        } while (!f);

        /*do {
            invalidDay = false;
            System.out.println("Dia de la semana");
            dia = sc.nextLine();

            for (ClaseEnum d: dias) {
                if (d.toString().equalsIgnoreCase(dia)) {
                    invalidDay = true;
                }
            }

            if (!invalidDay)
                System.out.println("Dia incorrecto");
        } while (!invalidDay);*/

        return dia;
    }
}
