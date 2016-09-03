package inmobadminback

class Parte {

    String nombre
    String apellido
    String dni
    String telefono
    String email

    static constraints = {
        nombre blank: false
        apellido blank : false
        telefono blank: false
        email(blank: false, email: true)
    }
}
