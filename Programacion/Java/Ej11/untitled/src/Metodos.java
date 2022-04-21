public class Metodos {
    private int numero = 0;

    public Metodos() {
    }

    public Metodos clone() {
        Metodos m = new Metodos();
        m.numero = this.numero;
        return m;
    }

    @Override
    public String toString() {
        return "Metodos{" +
                "numero=" + numero +
                '}';
    }
}
