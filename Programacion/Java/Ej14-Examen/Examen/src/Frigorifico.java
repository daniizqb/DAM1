public class Frigorifico extends Electrodomestico {
    private float temperatura; // Grados Centigrados

    public Frigorifico(float consumo, String modelo, float temperatura) {
        super(consumo, modelo);
        this.temperatura = temperatura;
    }

    public float pasoAFahrenheit() {
        return temperatura * ((float) 9 / 5) + 32;
    }

    @Override
    public String toString() {
        return "Frigorifico: " +
                super.toString() +
                " Temperatura=" + temperatura;
    }
}
