public class Ej2 {
    public static void main(String[] args) {
        short a = 0,b = 300,c;

        try {
            c = calcCociente(a,b);
        } catch (ArithmeticException ae) {
            System.out.println("Se ha producido un error");
        } finally {
            System.out.println("Programa finalizado");
        }
    }

    static short calcCociente(short a, short b) throws ArithmeticException {
        return (short) (b/a);
    }

}
