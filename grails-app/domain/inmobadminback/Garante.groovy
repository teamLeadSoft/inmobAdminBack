package inmobadminback

class Garante extends Parte{

    static constraints = {
    }

    String toString() {
        "${nombre+" "+apellido}"
    }
}
