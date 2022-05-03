import java.util.Calendar;
import java.util.GregorianCalendar;

public class GestionaPersona {
    public static void main(String[] args) {
        Persona p = new Persona("Daniel", new GregorianCalendar(2004, Calendar.MAY,5),'H');

        System.out.printf("%s",p.esMayorDeEdad() ? "esmayor" : "noes");
    }
}
