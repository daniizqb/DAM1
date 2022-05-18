import java.util.GregorianCalendar;
import java.util.Scanner;

public class Fechas {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Dia");
        int dia = Integer.parseInt(sc.nextLine());

        System.out.println("Mes");
        int mes = Integer.parseInt(sc.nextLine());

        System.out.println("Anyo");
        int anyo = Integer.parseInt(sc.nextLine());

        GregorianCalendar gc1 = new GregorianCalendar(anyo,mes-1,dia);


        System.out.println("Dia");
        dia = Integer.parseInt(sc.nextLine());

        System.out.println("Mes");
        mes = Integer.parseInt(sc.nextLine());

        System.out.println("Anyo");
        anyo = Integer.parseInt(sc.nextLine());

        GregorianCalendar gc2 = new GregorianCalendar(anyo,mes-1,dia);



        GregorianCalendar gc = new GregorianCalendar();

        long l = gc2.getTimeInMillis() - gc1.getTimeInMillis();

        System.out.println((l/(1000*3600*24)) + "dias");
    }
}
