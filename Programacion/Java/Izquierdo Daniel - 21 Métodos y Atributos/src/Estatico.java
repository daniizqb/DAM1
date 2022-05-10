public class Estatico {
    public static void mensajePeso(Persona p) {
        System.out.print("Esta persona ");
        if (p.calcularMC() == Persona.IMCSUPERIOR25)
            System.out.print("tiene sobrepeso\n");
        else if (p.calcularMC() < Persona.IMCINFERIOR20)
            System.out.print("esta por debajo de su peso ideal\n");
        else if (p.calcularMC() < Persona.IMCIDEAL)
            System.out.print("tiene un peso ideal\n");
    }
}
