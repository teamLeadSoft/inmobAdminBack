package inmobadminback

class Contrato {

    int numero
    int periodoIncremento
    float montoContrato
    float porcentajeIncremento
    Date fechaInicio
    Date fechaFin
    Locador locador
    Locatario locatario
    Propiedad propiedad

    static hasMany = [garante : Garante]

    static constraints = {
    }

    String toString() {
        "${numero+" "+propiedad.toString()}"
    }
}
