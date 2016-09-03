package inmobadminback

class Locador extends Parte {

    String nombreFantasia

    static hasMany = [propiedad : Propiedad]

    static constraints = {
    }

    String toString() {
        "${nombre+" "+apellido}"
    }
}
