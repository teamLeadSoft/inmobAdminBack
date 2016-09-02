package inmobadminback

class Garante extends Parte{

    static constraints = {
    }

    static belongsTo = [contrato : Contrato]

    String toString() {
        "${nombre+" "+apellido}"
    }
}
