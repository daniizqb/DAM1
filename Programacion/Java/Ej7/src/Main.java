import java.util.*;

public class Main {
    public static void main(String[] args) {
        // Proxima pandemia 23 Marzo de 2025
        // Cuantos dias quedan para la proxima pandemia
        // Cuantos dias han transcurrido desde el 30 Enero de 2020

        // Dentro de 2250 dias putin invade Espana, Que fecha sera esa

        GregorianCalendar gc = new GregorianCalendar();
        GregorianCalendar p1 = new GregorianCalendar(2020, Calendar.JANUARY,30);
        GregorianCalendar p2 = new GregorianCalendar(2025, Calendar.MARCH,23);
        GregorianCalendar ww3 = new GregorianCalendar();

        long l1 = p2.getTimeInMillis() - gc.getTimeInMillis();
        System.out.println("Quedan " + (l1 / (1000 * 3600 * 24)) + " hasta el " + p2.get(Calendar.DAY_OF_MONTH) + "-" + (p2.get(Calendar.MONTH)+1) + "-" + p2.get(Calendar.YEAR));

        long l2 = gc.getTimeInMillis() - p1.getTimeInMillis();
        System.out.println("Han pasado " + (l2 / (1000 * 3600 * 24)) + " dias desde " + p1.get(Calendar.DAY_OF_MONTH) + "-" + (p1.get(Calendar.MONTH)+1) + "-" + p1.get(Calendar.YEAR));

        ww3.set(Calendar.DAY_OF_YEAR,ww3.get(Calendar.DAY_OF_YEAR) + 2250);
        System.out.println("Putin invade Espana el " + ww3.get(Calendar.DAY_OF_MONTH) + "-" + (ww3.get(Calendar.MONTH)+1) + "-" + ww3.get(Calendar.YEAR));

        System.out.println(ww3.getTime());
    }
}
