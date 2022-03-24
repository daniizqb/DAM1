public class Persona {
    String nif;
    String nombre;
    short edad;

    Persona (String n, String nom, short ed) {
        nif = n;
        nombre = nom;
        edad = ed;
    }

    public String getNif() {
        return nif;
    }

    public void setNif(String nif) {
        this.nif = nif;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public short getEdad() {
        return edad;
    }

    public void setEdad(short edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "Persona{" + "nif='" + nif + '\'' + ", nombre='" + nombre + '\'' + ", edad=" + edad + '}';
    }
}
