import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Random;

public class Persona {
    private final char DEFAULTSEX = 'M';

    private int identificador;
    private String nombre;
    private GregorianCalendar fecha_nacimiento;
    private char sexo = DEFAULTSEX;
    private float peso;
    private float altura;
    private String aficiones;

    public Persona() {
    }

    public Persona(String nombre, GregorianCalendar fecha_nacimiento, char sexo) {
        this.nombre = nombre;
        this.fecha_nacimiento = fecha_nacimiento;
        this.sexo = sexo;
    }

    public Persona(String nombre, GregorianCalendar fecha_nacimiento, char sexo, short peso, short altura, String aficiones) {
        this.nombre = nombre;
        this.fecha_nacimiento = fecha_nacimiento;
        this.sexo = sexo;
        this.peso = peso;
        this.altura = altura;
        this.aficiones = aficiones;
    }

    public byte calcularMC() {
        final byte IMCINFERIOR20 = -1;
        final byte IMCIDEAL = 0;
        final byte IMCSUPERIOR25 = 1;

        float imc = (float) (peso/(Math.pow(altura,2)));
        byte result = IMCIDEAL;
        if (imc < 20)
            result = IMCINFERIOR20;
        else if (imc > 25)
            result = IMCSUPERIOR25;

        return result;
    }

    public boolean esMayorDeEdad() {
        GregorianCalendar gc = new GregorianCalendar();
        long l = gc.getTimeInMillis()-fecha_nacimiento.getTimeInMillis();
        l = l/(1000 * 3600 * 24);
        return l/365 >= 18;
    }

    public int generarIdenticador() {
        Random rd = new Random();
        return rd.nextInt(100000) + 100000;
    }
}