package inmobadminback



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LocadorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Locador.list(params), model:[locadorInstanceCount: Locador.count()]
    }

    def show(Locador locadorInstance) {
        respond locadorInstance
    }

    def create() {
        respond new Locador(params)
    }

    @Transactional
    def save(Locador locadorInstance) {
        if (locadorInstance == null) {
            notFound()
            return
        }

        if (locadorInstance.hasErrors()) {
            respond locadorInstance.errors, view:'create'
            return
        }

        locadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'locador.label', default: 'Locador'), locadorInstance.id])
                redirect locadorInstance
            }
            '*' { respond locadorInstance, [status: CREATED] }
        }
    }

    def edit(Locador locadorInstance) {
        respond locadorInstance
    }

    @Transactional
    def update(Locador locadorInstance) {
        if (locadorInstance == null) {
            notFound()
            return
        }

        if (locadorInstance.hasErrors()) {
            respond locadorInstance.errors, view:'edit'
            return
        }

        locadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Locador.label', default: 'Locador'), locadorInstance.id])
                redirect locadorInstance
            }
            '*'{ respond locadorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Locador locadorInstance) {

        if (locadorInstance == null) {
            notFound()
            return
        }

        locadorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Locador.label', default: 'Locador'), locadorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'locador.label', default: 'Locador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
