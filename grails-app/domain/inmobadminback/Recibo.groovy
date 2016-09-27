package inmobadminback

class Recibo {

    int nroRecibo
    String ciudad
    Date fecha
    float sumaNumero
    String nombreLocatario
    int dniLocatario
    String nombreLocador
    int dniLocador
    String direccion
    String mes
    int año
    String sumaLetras
    List<Servicio> servicios

    boolean esActivo
    boolean esAbonado

    String[] comprobanteMesAgua
    String[] comprobanteMesExpensas
    String[] comprobanteMesRentas
    String[] comporbanteMesMunicipal
    String[] comporbanteMesGas
    String[] comprobanteMesLuz

    static constraints = {
    }
}
