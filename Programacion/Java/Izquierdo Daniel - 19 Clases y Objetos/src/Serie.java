import java.util.Arrays;

public class Serie {
    public static final byte MAXACTORS = 5;
    public static final char[] genres = {'C','D','S','T'};
    public static final byte DEFAULTNUMCAP = 10;
    public static final char DEFAULTGENRE = 'D';

    private String titulo;
    private byte numCap = DEFAULTNUMCAP;
    private char genre = DEFAULTGENRE;
    private String guionista;
    private String[] actores;
    private float precio;

    public Serie() {
        this.actores = new String[MAXACTORS];
        Arrays.fill(this.actores,"");
    }

    public Serie(String titulo, String guionista) {
        this.titulo = titulo;
        this.guionista = guionista;
        this.actores = new String[MAXACTORS];
        Arrays.fill(this.actores,"");
    }

    public Serie(String titulo, byte numCap, char genre, String guionista, String[] actores, float precio) {
        this.titulo = titulo;
        this.numCap = numCap;
        if (Arrays.binarySearch(genres,genre) >= 0)
            this.genre = genre;
        this.guionista = guionista;
        for (int i = 0; i < actores.length; i++)
            if (actores[i] == null)
                actores[i] = "";
        this.actores = actores;

        this.precio = precio;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public byte getNumCap() {
        return numCap;
    }

    public void setNumCap(byte numCap) {
        this.numCap = numCap;
    }

    public char getGenre() {
        return genre;
    }

    public void setGenre(char genre) {
        if (Arrays.binarySearch(genres,genre) >= 0)
            this.genre = genre;
        else
            this.genre = DEFAULTGENRE;
    }

    public String getGuionista() {
        return guionista;
    }

    public void setGuionista(String guionista) {
        this.guionista = guionista;
    }

    public String[] getActores() {
        return actores;
    }

    public void setActores(String[] actores) {
        this.actores = actores;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Serie{" +
                "titulo='" + titulo + '\'' +
                ", numCap=" + numCap +
                ", genre=" + genre +
                ", guionista='" + guionista + '\'' +
                ", actores=" + Arrays.toString(actores) +
                ", precio=" + precio +
                '}';
    }
}
