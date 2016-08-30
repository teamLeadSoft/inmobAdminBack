package inmobadmin

import org.springframework.dao.DataIntegrityViolationException

class PropiedadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [propiedadInstanceList: Propiedad.list(params), propiedadInstanceTotal: Propiedad.count()]
    }

    def create() {
        [propiedadInstance: new Propiedad(params)]
    }

    def save() {
        def propiedadInstance = new Propiedad(params)
        if (!propiedadInstance.save(flush: true)) {
            render(view: "create", model: [propiedadInstance: propiedadInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), propiedadInstance.id])
        redirect(action: "show", id: propiedadInstance.id)
    }

    def show() {
        def propiedadInstance = Propiedad.get(params.id)
        if (!propiedadInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), params.id])
            redirect(action: "list")
            return
        }

        [propiedadInstance: propiedadInstance]
    }

    def edit() {
        def propiedadInstance = Propiedad.get(params.id)
        if (!propiedadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), params.id])
            redirect(action: "list")
            return
        }

        [propiedadInstance: propiedadInstance]
    }

    def update() {
        def propiedadInstance = Propiedad.get(params.id)
        if (!propiedadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (propiedadInstance.version > version) {
                propiedadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'propiedad.label', default: 'Propiedad')] as Object[],
                          "Another user has updated this Propiedad while you were editing")
                render(view: "edit", model: [propiedadInstance: propiedadInstance])
                return
            }
        }

        propiedadInstance.properties = params

        if (!propiedadInstance.save(flush: true)) {
            render(view: "edit", model: [propiedadInstance: propiedadInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), propiedadInstance.id])
        redirect(action: "show", id: propiedadInstance.id)
    }

    def delete() {
        def propiedadInstance = Propiedad.get(params.id)
        if (!propiedadInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), params.id])
            redirect(action: "list")
            return
        }

        try {
            propiedadInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'propiedad.label', default: 'Propiedad'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
