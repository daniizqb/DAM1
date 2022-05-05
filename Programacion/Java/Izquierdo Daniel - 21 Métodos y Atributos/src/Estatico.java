public class Estatico {
    public static void mensajePeso(Persona p) {
        System.out.print("Esta persona ");
        if (p.calcularMC() > 0)
            System.out.print("tiene sobrepeso\n");
        else if (p.calcularMC() < 0)
            System.out.print("esta por debajo de su peso ideal\n");
        else
            System.out.print("tiene un peso ideal\n");
    }
}
