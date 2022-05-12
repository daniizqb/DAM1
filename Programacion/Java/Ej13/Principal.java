public class Principal {
    public static void main(String[] args) {
        ClaseEnum diaM = ClaseEnum.TUESDAY;
        ClaseEnum diaJ = ClaseEnum.THURSDAY;
        System.out.println(diaM.name());
        System.out.println(diaJ.name());

        System.out.println(diaM.ordinal());
        ClaseEnum[] dias = ClaseEnum.values();

        for (ClaseEnum d: dias) {
            System.out.println(d);
        }
    }
}
