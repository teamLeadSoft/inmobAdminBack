package inmobadminback



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PropiedadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Propiedad.list(params), model:[propiedadInstanceCount: Propiedad.count()]
    }

    def show(Propiedad propiedadInstance) {
        respond propiedadInstance
    }

    def create() {
        respond new Propiedad(params)
    }

    @Transactional
    def save(Propiedad propiedadInstance) {
        if (propiedadInstance == null) {
            notFound()
            return
        }

        if (propiedadInstance.hasErrors()) {
            respond propiedadInstance.errors, view:'create'
            return
        }

        propiedadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), propiedadInstance.id])
                redirect propiedadInstance
            }
            '*' { respond propiedadInstance, [status: CREATED] }
        }
    }

    def edit(Propiedad propiedadInstance) {
        respond propiedadInstance
    }

    @Transactional
    def update(Propiedad propiedadInstance) {
        if (propiedadInstance == null) {
            notFound()
            return
        }

        if (propiedadInstance.hasErrors()) {
            respond propiedadInstance.errors, view:'edit'
            return
        }

        propiedadInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Propiedad.label', default: 'Propiedad'), propiedadInstance.id])
                redirect propiedadInstance
            }
            '*'{ respond propiedadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Propiedad propiedadInstance) {

        if (propiedadInstance == null) {
            notFound()
            return
        }

        propiedadInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Propiedad.label', default: 'Propiedad'), propiedadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
