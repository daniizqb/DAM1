public class Ej1 {
    public static void main(String[] args) {
        short a = 0,b = 300,c;

        try {
            c = (short) (b/a);
        } catch (ArithmeticException ae) {
            System.out.println("Se ha producido un error");
        } finally {
            System.out.println("Programa finalizado");
        }
    }
}
