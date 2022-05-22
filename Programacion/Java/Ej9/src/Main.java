import java.util.Scanner;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("String:");
        String texto = sc.nextLine();
        StringTokenizer st = new StringTokenizer(texto);
        int cont = 0;

        while (st.hasMoreTokens()) {
            String a = st.nextToken();
            if (a.equalsIgnoreCase("que") || a.equalsIgnoreCase("ni")
                    || a.equalsIgnoreCase("e") || a.equalsIgnoreCase("y"))
                cont++;
        }

        System.out.println(cont);
    }
}
