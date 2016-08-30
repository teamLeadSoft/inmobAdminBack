package inmobadminback



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LocatarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Locatario.list(params), model:[locatarioInstanceCount: Locatario.count()]
    }

    def show(Locatario locatarioInstance) {
        respond locatarioInstance
    }

    def create() {
        respond new Locatario(params)
    }

    @Transactional
    def save(Locatario locatarioInstance) {
        if (locatarioInstance == null) {
            notFound()
            return
        }

        if (locatarioInstance.hasErrors()) {
            respond locatarioInstance.errors, view:'create'
            return
        }

        locatarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'locatario.label', default: 'Locatario'), locatarioInstance.id])
                redirect locatarioInstance
            }
            '*' { respond locatarioInstance, [status: CREATED] }
        }
    }

    def edit(Locatario locatarioInstance) {
        respond locatarioInstance
    }

    @Transactional
    def update(Locatario locatarioInstance) {
        if (locatarioInstance == null) {
            notFound()
            return
        }

        if (locatarioInstance.hasErrors()) {
            respond locatarioInstance.errors, view:'edit'
            return
        }

        locatarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Locatario.label', default: 'Locatario'), locatarioInstance.id])
                redirect locatarioInstance
            }
            '*'{ respond locatarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Locatario locatarioInstance) {

        if (locatarioInstance == null) {
            notFound()
            return
        }

        locatarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Locatario.label', default: 'Locatario'), locatarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'locatario.label', default: 'Locatario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
