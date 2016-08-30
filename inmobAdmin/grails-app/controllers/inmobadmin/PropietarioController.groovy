package inmobadmin

import org.springframework.dao.DataIntegrityViolationException

class PropietarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [propietarioInstanceList: Propietario.list(params), propietarioInstanceTotal: Propietario.count()]
    }

    def create() {
        [propietarioInstance: new Propietario(params)]
    }

    def save() {
        def propietarioInstance = new Propietario(params)
        if (!propietarioInstance.save(flush: true)) {
            render(view: "create", model: [propietarioInstance: propietarioInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'propietario.label', default: 'Propietario'), propietarioInstance.id])
        redirect(action: "show", id: propietarioInstance.id)
    }

    def show() {
        def propietarioInstance = Propietario.get(params.id)
        if (!propietarioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
            redirect(action: "list")
            return
        }

        [propietarioInstance: propietarioInstance]
    }

    def edit() {
        def propietarioInstance = Propietario.get(params.id)
        if (!propietarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
            redirect(action: "list")
            return
        }

        [propietarioInstance: propietarioInstance]
    }

    def update() {
        def propietarioInstance = Propietario.get(params.id)
        if (!propietarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (propietarioInstance.version > version) {
                propietarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'propietario.label', default: 'Propietario')] as Object[],
                          "Another user has updated this Propietario while you were editing")
                render(view: "edit", model: [propietarioInstance: propietarioInstance])
                return
            }
        }

        propietarioInstance.properties = params

        if (!propietarioInstance.save(flush: true)) {
            render(view: "edit", model: [propietarioInstance: propietarioInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'propietario.label', default: 'Propietario'), propietarioInstance.id])
        redirect(action: "show", id: propietarioInstance.id)
    }

    def delete() {
        def propietarioInstance = Propietario.get(params.id)
        if (!propietarioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
            redirect(action: "list")
            return
        }

        try {
            propietarioInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
