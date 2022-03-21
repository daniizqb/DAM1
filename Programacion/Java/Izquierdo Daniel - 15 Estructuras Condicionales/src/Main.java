public class Main {
    public static void main(String[] args) {
        String str = args[0];
        char car = str.charAt(0);

        if (car == 'a' || car == 'e' || car == 'i' || car == 'o' || car == 'u')
            System.out.println("El caracter es la vocal minuscula " + car);
        else if (car == 'A' || car == 'E' || car == 'I' || car == 'O' || car == 'U')
            System.out.println("El caracter es una vocal mayuscula");
        else if (car >= '1' && car <= '9')
            switch (car) {
                case '1':
                    System.out.println("El caracter es el numero uno");
                    break;
                case '2':
                    System.out.println("El caracter es el numero dos");
                    break;
                case '3':
                    System.out.println("El caracter es el numero tres");
                    break;
                case '4':
                    System.out.println("El caracter es el numero cuatro");
                    break;
                case '5':
                    System.out.println("El caracter es el numero cinco");
                    break;
                case '6':
                    System.out.println("El caracter es el numero seis");
                    break;
                case '7':
                    System.out.println("El caracter es el numero siete");
                    break;
                case '8':
                    System.out.println("El caracter es el numero ocho");
                    break;
                case '9':
                    System.out.println("El caracter es el numero nueve");
                    break;
            }
        else
            System.out.println("Caracter no contemplado");

        str = str.toUpperCase();
        car = str.charAt(0);
        if (car >= 'A' && car <= 'J')
            System.out.println("Se encuentra en el rango A-J");
        else if (car >= 'K' && car <= 'R')
            System.out.println("Se encuentra en el rango K-R");
        else if (car >= 'S' && car <= 'Z')
            System.out.println("Se encuentra en el rango S-Z");
    }
}
