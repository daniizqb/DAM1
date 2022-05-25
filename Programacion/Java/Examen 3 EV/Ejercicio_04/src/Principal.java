public class Principal
{
    public static void main(String[] args) {
        String[] array = {"VAMOS","QUE","YA","QUEDA"};
        String[] arrayFinal = obtenerArray(array,"POCO");
        
        for (String s : arrayFinal) {
            System.out.println(s);
        }
    }
    
    public static String[] obtenerArray(String[] sArray,String elemento) {
        String[] aux = new String[sArray.length+1];
        
        System.arraycopy(sArray,0,aux,0,sArray.length);
        aux[aux.length-1] = elemento;
        
        return aux;
    }
}
