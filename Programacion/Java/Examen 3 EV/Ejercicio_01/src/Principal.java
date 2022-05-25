import java.util.Scanner;
import java.lang.*;

public class Principal {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        NoEstatico ne = new NoEstatico();
        
        System.out.println("Introduzca cadena");
        String str = sc.nextLine();
        
        System.out.println(ne.getCharString(str.length(),'*'));
        System.out.println(str);
        System.out.println(ne.getCharString(str.length(),'$'));
    }
}
