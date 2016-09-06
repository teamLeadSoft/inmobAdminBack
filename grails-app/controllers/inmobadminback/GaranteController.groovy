package inmobadminback

import grails.transaction.Transactional
import inmobadminback.utils.Mailer

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class GaranteController {

//    def mailer
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Garante.list(params), model:[garanteInstanceCount: Garante.count()]
    }

    def show(Garante garanteInstance) {
        respond garanteInstance
    }

    def create() {  
        respond new Garante(params)
    }

    @Transactional
    def save(Garante garanteInstance) {
        if (garanteInstance == null) {
            notFound()
            return
        }

        if (garanteInstance.hasErrors()) {
            respond garanteInstance.errors, view:'create'
            return
        }

        garanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'garante.label', default: 'Garante'), garanteInstance.id])
                redirect garanteInstance
            }
            '*' { respond garanteInstance, [status: CREATED] }
        }
    }

    def edit(Garante garanteInstance) {
        respond garanteInstance
    }

    @Transactional
    def update(Garante garanteInstance) {
        if (garanteInstance == null) {
            notFound()
            return
        }

        if (garanteInstance.hasErrors()) {
            respond garanteInstance.errors, view:'edit'
            return
        }

        garanteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Garante.label', default: 'Garante'), garanteInstance.id])
                redirect garanteInstance
            }
            '*'{ respond garanteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Garante garanteInstance) {

        if (garanteInstance == null) {
            notFound()
            return
        }

        garanteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Garante.label', default: 'Garante'), garanteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'garante.label', default: 'Garante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    private void envMail(String toArg, String subjectArg, String bodyArg) {
//        envMail("gonzalo.garay.soft@gmail.com", "asunto", "mensaje")

        sendMail {
            to toArg
            subject subjectArg
            body bodyArg
        }
    }
}
