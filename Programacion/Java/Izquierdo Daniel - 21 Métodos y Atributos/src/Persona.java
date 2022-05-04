import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Random;

public class Persona {
    private final char DEFAULTSEX = 'M';
    private final int MAXID = 999999;
    private final int MINID = 100000;
    private final int identificador = generarIdenticador();
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
        this.sexo = comprobarSexo(sexo);
    }

    public Persona(String nombre, GregorianCalendar fecha_nacimiento, char sexo, float peso, float altura, String aficiones) {
        this.nombre = nombre;
        this.fecha_nacimiento = fecha_nacimiento;
        this.sexo = comprobarSexo(sexo);
        this.peso = peso;
        this.altura = altura;
        this.aficiones = aficiones;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setFecha_nacimiento(GregorianCalendar fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public void setAficiones(String aficiones) {
        this.aficiones = aficiones;
    }

    public byte calcularMC() {
        final byte IMCINFERIOR20 = -1;
        final byte IMCIDEAL = 0;
        final byte IMCSUPERIOR25 = 1;

        float imc = (float) (peso / (Math.pow(altura, 2)));
        byte result = IMCIDEAL;
        if (imc < 20)
            result = IMCINFERIOR20;
        else if (imc > 25)
            result = IMCSUPERIOR25;

        return result;
    }

    public boolean esMayorDeEdad() {
        GregorianCalendar gc = new GregorianCalendar();
        long l = gc.getTimeInMillis() - fecha_nacimiento.getTimeInMillis();
        l = l / (1000 * 3600 * 24);
        return l / 365.2 >= 18;
    }

    private char comprobarSexo(char sexo) {
        char sex;
        if (sexo != 'H' && sexo != DEFAULTSEX)
            sex = DEFAULTSEX;
        else
            sex = sexo;

        return sex;
    }

    public int generarIdenticador() {
        Random rd = new Random();
        return rd.nextInt(MAXID - MINID + 1) + MINID;
    }
}