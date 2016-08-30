package inmobadminback

class Locador extends Parte {

    static hasMany = [propiedad : Propiedad]

    static constraints = {
    }
}
