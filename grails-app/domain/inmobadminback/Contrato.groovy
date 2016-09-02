package inmobadminback

class Contrato {

    int numero
    Date fechaInicio
    Date fechaFin
    Date cierreFacturacion

    float montoContrato

    int periodoIncremento
    float porcentajeIncremento

    Locador locador
    Locatario locatario
    Propiedad propiedad

    static constraints = {
    }

    static hasMany = [garante : Garante]

    String toString() {
        "${numero+" "+propiedad.toString()}"
    }
}
