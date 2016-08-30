package inmobadminback



import grails.test.mixin.*
import spock.lang.*

@TestFor(LocadorController)
@Mock(Locador)
class LocadorControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.locadorInstanceList
            model.locadorInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.locadorInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def locador = new Locador()
            locador.validate()
            controller.save(locador)

        then:"The create view is rendered again with the correct model"
            model.locadorInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            locador = new Locador(params)

            controller.save(locador)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/locador/show/1'
            controller.flash.message != null
            Locador.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def locador = new Locador(params)
            controller.show(locador)

        then:"A model is populated containing the domain instance"
            model.locadorInstance == locador
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def locador = new Locador(params)
            controller.edit(locador)

        then:"A model is populated containing the domain instance"
            model.locadorInstance == locador
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/locador/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def locador = new Locador()
            locador.validate()
            controller.update(locador)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.locadorInstance == locador

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            locador = new Locador(params).save(flush: true)
            controller.update(locador)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/locador/show/$locador.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/locador/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def locador = new Locador(params).save(flush: true)

        then:"It exists"
            Locador.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(locador)

        then:"The instance is deleted"
            Locador.count() == 0
            response.redirectedUrl == '/locador/index'
            flash.message != null
    }
}
