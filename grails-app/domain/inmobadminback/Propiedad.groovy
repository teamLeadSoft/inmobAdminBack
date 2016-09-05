package inmobadminback

class Propiedad {

    String calle
    int numero
    String bloque
    int piso
    String departamento
    String barrio
    String ph

    static constraints = {
        calle blank: false
        numero blank: false
        ph blank: false
    }
    String toString() {
        "${calle+" "+numero+" PH: "+ph}"
    }
}
