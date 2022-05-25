public class Musico
{
    private String nombre;
    private Instrumento instrument;
    
    public Musico(String nombre, Instrumento instrument) {
        this.nombre = nombre;
        this.instrument = instrument;
    }

    public String getNombre() {
        return nombre;
    }

    public Instrumento getInstrument() {
        return instrument;
    }
}
