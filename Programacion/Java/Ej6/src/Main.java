import java.util.Calendar;
import java.util.GregorianCalendar;

public class Main {
    public static void main(String[] args) {
        /*Pedir Mes y dia y calcular dias que han pasado desde principio de anyo y cuantos maltan hasta final de anyo*/

        GregorianCalendar gc = new GregorianCalendar();
        System.out.println("Dias transcurridos desde el inico del anyo: " + gc.get(Calendar.DAY_OF_YEAR));
        System.out.println("Dias restantes hasta final del anyo: " + (365 - gc.get(Calendar.DAY_OF_YEAR)));
    }
}
