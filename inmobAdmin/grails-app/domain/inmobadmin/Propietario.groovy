package inmobadmin

class Propietario extends Entidad{

    static hasMany = [propiedad : Propiedad]
    static constraints = {
    }
}
