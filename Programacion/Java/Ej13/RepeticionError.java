public class RepeticionError {
    public static int peticionNum (String str) {
        boolean error;
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
