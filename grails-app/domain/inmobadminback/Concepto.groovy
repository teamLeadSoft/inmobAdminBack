package inmobadminback

class Concepto {

    Date inicio
    String descripcion
    int cuotas
    float monto
    boolean isCredito

    static constraints = {
    }

    String toString() {
        "${descripcion}"
    }
}
