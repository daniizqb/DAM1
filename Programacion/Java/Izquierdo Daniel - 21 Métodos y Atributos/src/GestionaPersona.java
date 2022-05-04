import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Scanner;

public class GestionaPersona {
    public static void main(String[] args) {
        //TODO Controlar valores validos en fecha
        Scanner sc = new Scanner(System.in);

        //Introducir datos por pantalla
        System.out.println("Nombre");
        String nombre = sc.nextLine();

        System.out.println("Fecha de nacimiento");
        System.out.println("Dia");
        byte dia = Byte.parseByte(sc.nextLine());
        System.out.println("Mes");
        byte mes = Byte.parseByte(sc.nextLine());
        System.out.println("Anyo");
        byte anyo = Byte.parseByte(sc.nextLine());
        GregorianCalendar fc = new GregorianCalendar(anyo,mes-1,dia);

        System.out.println("Sexo");
        char sexo = sc.nextLine().charAt(0);

        System.out.println("Peso");
        float peso = Float.parseFloat(sc.nextLine());

        System.out.println("Altura");
        float altura = Float.parseFloat(sc.nextLine());

        System.out.println("Aficiones");
        String aficiones = sc.nextLine();

        //Crear objectos con los datos pedidos previamente
        Persona p1 = new Persona();
        Persona p2 = new Persona(nombre,fc,sexo);
        Persona p3 = new Persona(nombre,fc,sexo,peso,altura,aficiones);

        //Cambiar valor de los atributos a los que no les damos valor
        p1.setNombre("Manuel");
        p1.setFecha_nacimiento(new GregorianCalendar(2002, Calendar.MAY,9));
        p1.setSexo('H');
        p1.setPeso(59);
        p1.setAltura((float) 1.76);
        p1.setAficiones("futbol");

        p2.setPeso(70);
        p2.setAltura((float) 1.65);
        p2.setAficiones("karaoke");

        //Comprobar el IMC de cada persona
        System.out.println("Persona 1:");
        Estatico.mensajePeso(p1);
        System.out.println("Persona 2:");
        Estatico.mensajePeso(p2);
        System.out.println("Persona 3:");
        Estatico.mensajePeso(p3);

        //Comprobar si las personas son mayor de edad
        NoEstatico ne = new NoEstatico();
        System.out.println("Persona 1:");
        ne.mensajeEdad(p1);
        System.out.println("Persona 2:");
        ne.mensajeEdad(p2);
        System.out.println("Persona 3:");
        ne.mensajeEdad(p3);
    }

    static void mensajeInformacion(Persona p) {
        System.out.println("ID:" + p.getIdentificador() + " Nombre:" + p.getNombre() + " Fecha Nacimiento:" + p.getFecha_nacimiento());
    }
}
