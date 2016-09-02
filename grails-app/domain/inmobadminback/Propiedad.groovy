package inmobadminback

class Propiedad {

    String calle
    int numero
    String bloque
    int piso
    int departamento
    String barrio
    String ph

    static constraints = {
    }

    static belongsTo = [locador : Locador]

    String toString() {
        "${calle+" "+numero+" PH: "+ph}"
    }
}
