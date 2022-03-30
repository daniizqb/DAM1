import java.util.Calendar;
import java.util.GregorianCalendar;

public class Main {
    public static void main(String[] args) {
        int dia = Integer.parseInt(args[0]);
        int mes = Integer.parseInt(args[1]) - 1;

        GregorianCalendar gc = new GregorianCalendar();
        gc.set(Calendar.DAY_OF_MONTH,dia);
        gc.set(Calendar.MONTH,mes);
        System.out.println("Dias transcurridos desde el inico del anyo: " + gc.get(Calendar.DAY_OF_YEAR));
        System.out.println("Dias restantes hasta final del anyo: " + (365 - gc.get(Calendar.DAY_OF_YEAR)));
    }
}
