import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Metodos m = new Metodos();

        System.out.println("Anyo:");
        short anyo = Short.parseShort(sc.nextLine());

        System.out.println(bisiesto(anyo));
        printBisiesto(anyo);
        m.enmarcar("Pepito");
    }

    public static boolean bisiesto(short anyo) {
        return anyo % 4 == 0;
    }

    public static void printBisiesto(short anyo) {
        if (bisiesto(anyo))
            System.out.println(anyo);
    }

    /*public static void enmarcar(String lit) {
        short tam = (short) (lit.length()+2);
        for (short i = 0;i < tam;i++)
            System.out.printf("%s",i == lit.length()+1 ? "*\n":'*');
        System.out.println('*'+lit+'*');
        for (short i = 0;i < tam;i++)
            System.out.printf("%s",i == lit.length()+1 ? "*\n":'*');
    }*/

}
