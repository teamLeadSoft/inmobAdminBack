package inmobadmin

import org.springframework.dao.DataIntegrityViolationException

class InquilinoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [inquilinoInstanceList: Inquilino.list(params), inquilinoInstanceTotal: Inquilino.count()]
    }

    def create() {
        [inquilinoInstance: new Inquilino(params)]
    }

    def save() {
        def inquilinoInstance = new Inquilino(params)
        if (!inquilinoInstance.save(flush: true)) {
            render(view: "create", model: [inquilinoInstance: inquilinoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), inquilinoInstance.id])
        redirect(action: "show", id: inquilinoInstance.id)
    }

    def show() {
        def inquilinoInstance = Inquilino.get(params.id)
        if (!inquilinoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), params.id])
            redirect(action: "list")
            return
        }

        [inquilinoInstance: inquilinoInstance]
    }

    def edit() {
        def inquilinoInstance = Inquilino.get(params.id)
        if (!inquilinoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), params.id])
            redirect(action: "list")
            return
        }

        [inquilinoInstance: inquilinoInstance]
    }

    def update() {
        def inquilinoInstance = Inquilino.get(params.id)
        if (!inquilinoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (inquilinoInstance.version > version) {
                inquilinoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'inquilino.label', default: 'Inquilino')] as Object[],
                          "Another user has updated this Inquilino while you were editing")
                render(view: "edit", model: [inquilinoInstance: inquilinoInstance])
                return
            }
        }

        inquilinoInstance.properties = params

        if (!inquilinoInstance.save(flush: true)) {
            render(view: "edit", model: [inquilinoInstance: inquilinoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), inquilinoInstance.id])
        redirect(action: "show", id: inquilinoInstance.id)
    }

    def delete() {
        def inquilinoInstance = Inquilino.get(params.id)
        if (!inquilinoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), params.id])
            redirect(action: "list")
            return
        }

        try {
            inquilinoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'inquilino.label', default: 'Inquilino'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
