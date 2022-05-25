public class Principal
{
    public static void main(String[] args) {
        boolean error = true;
        String dato = "";

        do {
            try {
                dato = Estatica.controlErrorString("Introduzca cadena no vacia y sin espacios significativos");
                error = false;
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        } while (error);

    }
}
