public abstract class Maths {
    public int resultado;

    public abstract void operacion(int num1,int num2);

    public void mostrar() {
        System.out.println("Resultado: " + resultado);
    }
}