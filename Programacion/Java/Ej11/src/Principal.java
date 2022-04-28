public class Principal {
    public static void main(String[] args) {
        Metodos m1 = new Metodos();
        Metodos m2 = m1.clone();
        System.out.println(m1);
        System.out.println(m2);
    }
}
