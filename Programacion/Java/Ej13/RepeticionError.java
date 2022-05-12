import java.util.Scanner;

public class RepeticionError {
    public static int peticionNum (String str) {
        boolean error = false;
        int num = 0;

        do {
            try {
                num = ControlErrores.numEntero(str);
                error = false;
            } catch (Exception e) {
                error = true;
                System.out.println(e.getMessage());
            }
        } while (error);


        return num;
    }
}
