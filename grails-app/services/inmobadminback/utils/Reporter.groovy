package inmobadminback.utils

import inmobadminback.Contrato
import inmobadminback.Recibo
import org.bouncycastle.util.BigIntegers

/**
 * Created by gonzaloGar on 29/09/16.
 */
class Reporter {

    def Recibo generarReporte(Contrato contrato){
        Recibo recibo = new Recibo()
        recibo.setNroRecibo(genNumeroRecibo())
        recibo.setCiudad(getCiudad())
        recibo.setFecha(new Date())
        recibo.setSumaNumero(getSumaNumero())
        recibo.setNombreLocatario(contrato.getLocatario().getNombre()+" "+contrato.getLocatario().getApellido())
        recibo.setDniLocatario(contrato.getLocatario().getDni().toInteger())
        recibo.setNombreLocador(contrato.getLocador().getNombre()+" "+contrato.getLocador().getApellido())
        recibo.setDniLocador(contrato.getLocador().getDni().toInteger())
        recibo.setDireccion(contrato.getPropiedad().getCalle()+" "+contrato.getPropiedad().getNumero()+" "+contrato.getPropiedad().getDepartamento()+" "+contrato.getPropiedad().getDepartamento()
                            +" "+contrato.getPropiedad().getPiso()+" "+contrato.getPropiedad().getTorre())
        recibo.setMes(getMes())
        recibo.setAño(getAño())
        recibo.setSumaLetras(getSumaLetras())
        return recibo
    }

    def genNumeroRecibo(){
        return 4566
    }

    def getCiudad(){
        return "Cordoba"
    }

    def getSumaNumero(){
        return 2850
    }

    def getMes(){
        return  "Ocutbre"
    }

    def getAño(){
        return 1983
    }

    def getSumaLetras(){
        return "Dos mil ochocientos cincuenta"
    }


}
