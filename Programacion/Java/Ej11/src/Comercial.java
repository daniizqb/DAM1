public class Comercial extends Empleado {
    private float dieta;

    public Comercial(String nombre, String dni, String numSegSocial, float dieta) {
        super(nombre, dni, numSegSocial);
        this.dieta = dieta;
    }

    @Override
    public String toString() {
        return "Comercial{" +
                "dieta=" + dieta +
                "} " + super.toString();
    }
}
