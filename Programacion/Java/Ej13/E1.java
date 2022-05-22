import java.util.Scanner;

public class E1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int numero = 0;
        boolean isNum = false;
        do {
            try {
                System.out.println("Numero");
                numero = Integer.parseInt(sc.nextLine());
                System.out.println("El numero es " + numero);
                isNum = true;
            } catch (NumberFormatException e) {
                System.out.println("Numero invalido");
            }catch (Exception e) {
                System.out.println("Error");
                e.printStackTrace();
            }
        } while (!isNum);

        System.out.print("Programa finalizado");
    }
}
