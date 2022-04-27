public abstract class Persona {

    private short altura;

    public abstract void Hablar();
    public abstract void Caminar();
    public void ImprimirPeso() {
        System.out.println(this.altura);
    }
}
