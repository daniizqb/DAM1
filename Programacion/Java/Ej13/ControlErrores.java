import java.util.Scanner;

public class ControlErrores {
    public static int numEntero (String str) {
        Scanner sc = new Scanner(System.in);
        int num = 0;

        try {
            System.out.println(str);
            num = Integer.parseInt(sc.nextLine());
            if (num < 0)
                throw new NumeroNegativo("El numero no puede ser negativo");
            if (num == 0)
                throw new NumeroNulo("Numero no puede ser nulo");
        } catch (NumberFormatException e) {
            System.out.println("Esto no es un numero, vuelve a intentarlo");
        } catch (Exception e) {
            System.out.println("Error");
            e.printStackTrace();
        }

        return num;
    }
}
