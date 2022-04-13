import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Serie s1 = new Serie();
        Serie s2 = new Serie("","");
        Serie s3 = new Serie("",Serie.DEFAULTNUMCAP,Serie.DEFAULTGENRE,"",new String[Serie.MAXACTORS],0.0f);
        byte i = 0;
        String retorno = "";

        System.out.println("||Serie 1||");

        System.out.println("Titulo");
        s1.setTitulo(sc.nextLine());
        System.out.println("Guionista");
        s1.setGuionista(sc.nextLine());

        System.out.println("Actores:");
        do {
            System.out.println("Actor:");
            s1.getActores()[i] = sc.nextLine();
            System.out.println("Desea continuar introduciendo actores? (S/N)");
            retorno = sc.nextLine();

            i++;
        } while (retorno.equalsIgnoreCase("S") && i < Serie.MAXACTORS);


        System.out.println("||Serie 2||");

        System.out.println("Titulo");
        s2.setTitulo(sc.nextLine());
        System.out.println("Guionista");
        s2.setGuionista(sc.nextLine());


        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s3);
    }
}
