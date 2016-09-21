package inmobadminback

class Contrato {

    int numero
    int periodoIncremento
    float montoTotalContrato
    float montoMensualContrato
    float porcentajeIncremento
    Date fechaInicio
    Date fechaFin
    Locador locador
    Locatario locatario
    Propiedad propiedad

    static hasMany = [garante : Garante,
                      concepto: Concepto]

    static constraints = {
    }

    String toString() {
        "${numero+" "+propiedad.toString()}"
    }
}
