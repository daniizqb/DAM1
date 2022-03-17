import java.io.*;
public class Principal {

    public static void main(String[] args) throws IOException {
        /*String numero = "";
        final float DEC = 375.28f;
        int pos = 0;
        
        numero = String.valueOf(DEC);
        pos = numero.lastIndexOf('.');
        System.out.println("Parte entera:" + numero.substring(0,pos) + "\nParte real:" + numero.substring(pos + 1));*/

        BufferedReader teclado = new BufferedReader(new InputStreamReader(System.in,"UTF-8"));

        System.out.println("Capital:");
        int capital = Integer.parseInt(teclado.readLine());

        System.out.println("Interes:");
        float interes = Float.parseFloat(teclado.readLine());

        interes = capital/interes;
        System.out.println("Intereses:" + interes);

        System.out.println("Capital + Interes:" + (capital + interes));
    }

}
