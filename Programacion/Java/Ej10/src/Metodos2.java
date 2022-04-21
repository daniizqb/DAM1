public class Metodos2 {

    private int numero = 1;
    public static boolean par(short num) {
        return num % 2 == 0;
    }

    public boolean primo(short num) {
        short i = 2, cont = 0;
        do {
            if (num % i == 0)
                cont++;
            i++;
        } while (i <= num && cont < 2);

        return cont < 2;
    }

    public Metodos2 clone() {
        Metodos2 m = new Metodos2();
        m.numero = this.numero;
        return m;
    }
}
