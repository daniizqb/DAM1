import java.util.Scanner;

public class ControlErrores {
    public static int numEntero (String str) throws Exception {
        Scanner sc = new Scanner(System.in);
        int num = 0;

        try {
            System.out.println(str);
            num = Integer.parseInt(sc.nextLine());
        } catch (NumberFormatException e) {
            System.out.println("Esto no es un numero, vuelve a intentarlo");
        } catch (Exception e) {
            System.out.println("Error");
            e.printStackTrace();
        }

        if (num < 0)
            throw new Exception("El numero no puede ser negativo");
        else if (num == 0)
            throw new Exception("Numero no puede ser nulo");

        return num;
    }
}
