import java.util.Scanner;

public class E2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        /*int num1 = obtenerNumero(sc, "Numero1");
        int num2 = obtenerNumero(sc, "Numero2");
        int num3 = obtenerNumero(sc, "Numero3");*/

        try {
            System.out.print("Suma: " + (
                    obtenerNumero(sc, "Numero1") +
                            obtenerNumero(sc, "Numero2") +
                            obtenerNumero(sc, "Numero3")));
        } catch (Exception e) {
            System.out.println("Numero no puede ser negativo");
        }
        System.out.println("Programa Finalizado");
    }

    public static int obtenerNumero(Scanner sc, String str) throws Exception {
        boolean isNum = false;
        int num = 0;

        do {
            try {
                System.out.println(str);
                num = Integer.parseInt(sc.nextLine());
                if (num <= 0) throw new Exception("El numero debe ser mayor que 0");
                isNum = true;
            } catch (NumberFormatException e) {
                System.out.println("Esto no es un numero, vuelve a intentarlo");
            } catch (Exception e) {
                System.out.println("Error");
                e.printStackTrace();
            }
        } while (!isNum);

        return num;
    }
}