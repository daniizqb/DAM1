public class Principal {

    public static void main(String[] args) {
        String numero = "";
        final float DEC = 375.28f;
        int pos = 0;
        
        numero = String.valueOf(DEC);
        pos = numero.lastIndexOf('.');
        System.out.println("Parte entera:" + numero.substring(0,pos) + "\nParte real:" + numero.substring(pos + 1));
    }

}
