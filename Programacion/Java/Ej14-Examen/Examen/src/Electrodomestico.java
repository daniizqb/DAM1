public class Electrodomestico {
    private float consumo;
    private String modelo;

    public Electrodomestico() {
    }

    public Electrodomestico(float consumo, String modelo) {
        this.consumo = consumo;
        this.modelo = modelo;
    }

    @Override
    public String toString() {
        return "Modelo=" + modelo +
                " Consumo=" + consumo;
    }
}
