import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        //Pedir por pantalla

        float consumo = getValidFloat("Consumo");
        float temperatura = getValidFloat("Temperatura");
        String modelo = getStringWhithoutDigits("Modelo");

        //Crear objeto con los datos pedidos previamente

        Frigorifico f = new Frigorifico(consumo, modelo, temperatura);

        //Mostrar por pantalla el objeto y la conversion de la temperatura a grados

        System.out.println(f);
        System.out.printf("Grados Fahrenheit: %.2f", f.pasoAFahrenheit());
    }

    //Metodos para controlar mediante excepciones que sean datos numericos y que el modelo no tenga ningun digito

    static float getValidFloat(String label) {
        boolean error = true;
        float dato = 0;

        do {
            try {
                dato = controlErrorFloat(label);
                error = false;
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        } while (error);

        return dato;
    }

    static String getStringWhithoutDigits(String label) {
        boolean error = true;
        String dato = "";

        do {
            try {
                dato = controlErrorString(label);
                error = false;
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        } while (error);

        return dato;
    }

    static String controlErrorString(String label) throws Exception {
        Scanner sc = new Scanner(System.in);
        String mod = "";

        try {
            System.out.println(label);
            mod = sc.nextLine();
            for (short i = 0; i < mod.length(); i++) {
                if (Character.isDigit(mod.charAt(i)))
                    throw new Exception();
            }
        } catch (Exception e) {
            throw new Exception("El modelo contiene algun digito");
        }

        return mod;
    }

    static float controlErrorFloat(String label) throws Exception {
        Scanner sc = new Scanner(System.in);
        float dato = 0;

        try {
            System.out.println(label);
            dato = Float.parseFloat(sc.nextLine());
        } catch (NumberFormatException e) {
            throw new NumberFormatException("El dato no es un digito");
        }

        return dato;
    }


}