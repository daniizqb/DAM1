public class Empleado {
    private String nombre;
    private String dni;
    private String numSegSocial;
    public Empleado(String nombre, String dni, String numSegSocial) {
        this.nombre = nombre;
        this.dni = dni;
        this.numSegSocial = numSegSocial;
    }
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    @Override
    public String toString() {
        return "Empleado{" +
                "nombre='" + nombre + '\'' +
                ", dni='" + dni + '\'' +
                ", numSegSocial='" + numSegSocial + '\'' +
                '}';
    }
}

