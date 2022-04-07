public class Metodos {

    public void enmarcar(String lit) {
        short tam = (short) (lit.length()+2);
        for (short i = 0;i < tam;i++)
            System.out.printf("%s",i == lit.length()+1 ? "*\n":'*');
        System.out.println('*'+lit+'*');
        for (short i = 0;i < tam;i++)
            System.out.printf("%s",i == lit.length()+1 ? "*\n":'*');
    }
}
