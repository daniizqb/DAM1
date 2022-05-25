public class Principal
{
    public static void main(String[] args) {
        Instrumento i1 = new Instrumento("guitarra","cuerda");
        Instrumento i2 = new Instrumento("flauta","aire");
        
        Musico m1 = new Musico("M1",i1);
        Musico m2 = new Musico("M2",i2);
        Musico m3 = new Musico("M3",i2);
        Musico m4 = new Musico("M4",i1);
        
        Musico[] musicos = {m1,m2,m3,m4};
        
        Banda b1 = new Banda(musicos);
        composicionBanda(b1);
        
        System.out.println();
        
        System.out.println("Modificar i2 a viento");
        i2.setTipo("viento");
        composicionBanda(b1);
    }
    
    public static void composicionBanda(Banda b) {
        Musico[] m = b.getMusicos();
        for (short i = 0; i < m.length; i++) {
            System.out.println(m[i].getNombre() + 
                                '-' + m[i].getInstrument().getNombre() + 
                                '-' + m[i].getInstrument().getTipo());
        }
    }
}
