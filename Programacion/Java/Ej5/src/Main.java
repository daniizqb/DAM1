import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Persona pers = new Persona("1111111Q","Juan", (short) 10);
        Scanner sc = new Scanner(System.in);

        System.out.printf("NIF: %s Nombre: %s Edad: %hd",pers.getNif(),pers.getNombre(),pers.getEdad());

        System.out.println("NIF");
        pers.setNif(sc.nextLine());
        System.out.println("Nombre");
        pers.setNombre(sc.nextLine());
        System.out.println("Edad");
        pers.setEdad(Short.parseShort(sc.nextLine()));

        System.out.printf("NIF: %s Nombre: %s Edad: %hd",pers.getNif(),pers.getNombre(),pers.getEdad());
    }
}
