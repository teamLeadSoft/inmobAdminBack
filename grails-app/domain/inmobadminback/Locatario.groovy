package inmobadminback

class Locatario extends Parte{

    static constraints = {
    }

    String toString() {
        "${nombre+" "+apellido}"
    }
}
