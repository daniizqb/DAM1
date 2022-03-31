import javax.swing.plaf.IconUIResource;
import java.util.Scanner;
import java.util.StringTokenizer;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("String:");
        String texto = sc.nextLine();
        StringTokenizer st = new StringTokenizer(texto);
        int cont = 0;
        String[] aS = {"y","e","ni","que"};

        while (st.hasMoreTokens()) {
            if (st.nextToken().equalsIgnoreCase("que") || st.nextToken().equalsIgnoreCase("ni")
                    || st.nextToken().equalsIgnoreCase("e") || st.nextToken().equalsIgnoreCase("y"))
                cont++;
        }

        System.out.println(cont);
    }
}
