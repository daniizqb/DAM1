import java.util.Scanner;

public class Main2 {
    public static void main(String[] args) {
        Metodos2 m = new Metodos2();
        Scanner sc = new Scanner(System.in);
        Metodos2 m2 = m.clone();
        short opt = 0, num = 0;

        do {
            System.out.println("1- Simetrico");
            System.out.println("2- Primo");
            System.out.println("3- Par");
            System.out.println("4- Salir");

            opt = Short.parseShort(sc.nextLine());

            switch (opt) {
                case 1:
                    System.out.println("Introduce texto");
                    String texto = sc.nextLine();
                    System.out.printf("El texto %s %s palindromo\n",texto,palindromo(texto) ? "es":"no es");
                    break;
                case 2:
                    System.out.println("Introduce numero");
                    num = Short.parseShort(sc.nextLine());
                    System.out.printf("El numero %d %s primo\n",num,m.primo(num) ? "es":"no es");
                    break;
                case 3:
                    System.out.println("Introduce numero");
                    num = Short.parseShort(sc.nextLine());
                    System.out.printf("El numero %d es %s\n",num,Metodos2.par(num) ? "par":"impar");
                    break;
                case 4:
                    System.out.println("FIN");
                    break;
                default:
                    System.out.println("Opccion invalida");
            }
        } while (opt != 4);

    }

    public static boolean palindromo(String str) {
        boolean f = true;
        short i = 0;

        do {
            if (str.charAt(i) != str.charAt(str.length()-1-i))
                f = false;
            i++;
        } while (i >= str.length()/2 && !f);

        return f;
    }
}
