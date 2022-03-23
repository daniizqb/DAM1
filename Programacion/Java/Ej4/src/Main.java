public class Main {
    public static void main(String[] args) {
        short aNum [] = {2,4,5,6,7};
        short aNum2 [] = new short[5];
        short i = 0;

        System.out.println("Antes de copia");
        System.out.println("Array1");
        for (i = 0;i < 5;i++)
            System.out.println(aNum[i]);

        System.out.println("Array2");
        for (i = 0;i < 5;i++)
            System.out.println(aNum2[i]);

        System.arraycopy(aNum,0,aNum2,0,5);

        System.out.println("Despues de copia");
        System.out.println("Array1");
        for (i = 0;i < 5;i++)
            System.out.println(aNum[i]);

        System.out.println("Array2");
        for (i = 0;i < 5;i++)
            System.out.println(aNum2[i]);

    }
}
