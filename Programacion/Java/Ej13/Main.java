public class Main {
    public static void main(String[] args) {
        try {
            demoproc();
        } catch (IllegalAccessException e) {
            System.out.println("Capturada de nuevo " + e);
        }
    }

    static void demoproc() throws IllegalAccessException {
        System.out.println("Capturada la excepcion en demoproc");
        throw new IllegalAccessException("demo");
    }
}
