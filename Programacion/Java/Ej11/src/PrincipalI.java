public class PrincipalI implements InterfaceA,InterfaceB,InterfaceC{

    public static void main(String[] args) {
        PrincipalI p = new PrincipalI();
        p.impMensajeA(mensajeA);
        p.impMensajeB(mensajeB);
    }

    @Override
    public void impMensajeA(String mensaje) {
        System.out.println(mensaje);
    }

    @Override
    public void impMensajeB(String mensaje) {
        System.out.println(mensaje);
    }
}