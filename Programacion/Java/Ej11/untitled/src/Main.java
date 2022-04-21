public class Main {
    public static void main(String[] args) {
        Metodos m1 = new Metodos();
        Metodos m2 = m1.clone();

        System.out.println("Obj 1:");
        System.out.println(m1);
        System.out.println("Obj 2:");
        System.out.println(m2);
    }
}