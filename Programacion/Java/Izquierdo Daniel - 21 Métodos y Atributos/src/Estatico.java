public class Estatico extends Persona{
    public static void mensajePeso(Persona p) {
        System.out.print("Esta persona ");
<<<<<<< HEAD
        if (p.calcularMC() == Persona.IMCSUPERIOR25)
            System.out.print("tiene sobrepeso\n");
        else if (p.calcularMC() < Persona.IMCINFERIOR20)
=======
        if (p.calcularMC() == p.IMCSUPERIOR25)
            System.out.print("tiene sobrepeso\n");
        else if (p.calcularMC() == p.IMCINFERIOR20)
>>>>>>> abe10a05b840a97c6fb98f91e2c5617fae41ebba
            System.out.print("esta por debajo de su peso ideal\n");
        else if (p.calcularMC() < Persona.IMCIDEAL)
            System.out.print("tiene un peso ideal\n");
    }
}
