package inmobadminback



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ParteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Parte.list(params), model:[parteInstanceCount: Parte.count()]
    }

    def show(Parte parteInstance) {
        respond parteInstance
    }

    def create() {
        respond new Parte(params)
    }

    @Transactional
    def save(Parte parteInstance) {
        if (parteInstance == null) {
            notFound()
            return
        }

        if (parteInstance.hasErrors()) {
            respond parteInstance.errors, view:'create'
            return
        }

        parteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'parte.label', default: 'Parte'), parteInstance.id])
                redirect parteInstance
            }
            '*' { respond parteInstance, [status: CREATED] }
        }
    }

    def edit(Parte parteInstance) {
        respond parteInstance
    }

    @Transactional
    def update(Parte parteInstance) {
        if (parteInstance == null) {
            notFound()
            return
        }

        if (parteInstance.hasErrors()) {
            respond parteInstance.errors, view:'edit'
            return
        }

        parteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Parte.label', default: 'Parte'), parteInstance.id])
                redirect parteInstance
            }
            '*'{ respond parteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Parte parteInstance) {

        if (parteInstance == null) {
            notFound()
            return
        }

        parteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Parte.label', default: 'Parte'), parteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'parte.label', default: 'Parte'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
