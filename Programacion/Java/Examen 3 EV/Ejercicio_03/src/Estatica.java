import java.util.Scanner;

public class Estatica
{
    public static String controlErrorString(String label) throws Exception {
        Scanner sc = new Scanner(System.in);
        String str = "";

        try {
            System.out.println(label);
            str = sc.nextLine();
            
            if (str.length() == 0) {
                throw new Exception("Error...La cadena no puede estar vacia");
            }
            
            for (short i = 0; i < str.length(); i++) {
                if (Character.isWhitespace(str.charAt(i)))
                    throw new Exception("Error...La cadena no puede contener ningun espacio significativo");
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }

        return str;
    }
}
