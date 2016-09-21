package inmobadminback



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ReciboController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Recibo.list(params), model:[reciboInstanceCount: Recibo.count()]
    }

    def show(Recibo reciboInstance) {
        respond reciboInstance
    }

    def create() {
        respond new Recibo(params)
    }

    @Transactional
    def save(Recibo reciboInstance) {
        if (reciboInstance == null) {
            notFound()
            return
        }

        if (reciboInstance.hasErrors()) {
            respond reciboInstance.errors, view:'create'
            return
        }

        reciboInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recibo.label', default: 'Recibo'), reciboInstance.id])
                redirect reciboInstance
            }
            '*' { respond reciboInstance, [status: CREATED] }
        }
    }

    def edit(Recibo reciboInstance) {
        respond reciboInstance
    }

    @Transactional
    def update(Recibo reciboInstance) {
        if (reciboInstance == null) {
            notFound()
            return
        }

        if (reciboInstance.hasErrors()) {
            respond reciboInstance.errors, view:'edit'
            return
        }

        reciboInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Recibo.label', default: 'Recibo'), reciboInstance.id])
                redirect reciboInstance
            }
            '*'{ respond reciboInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Recibo reciboInstance) {

        if (reciboInstance == null) {
            notFound()
            return
        }

        reciboInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Recibo.label', default: 'Recibo'), reciboInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recibo.label', default: 'Recibo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
