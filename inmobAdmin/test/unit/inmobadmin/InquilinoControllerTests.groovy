package inmobadmin



import org.junit.*
import grails.test.mixin.*

@TestFor(InquilinoController)
@Mock(Inquilino)
class InquilinoControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/inquilino/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.inquilinoInstanceList.size() == 0
        assert model.inquilinoInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.inquilinoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.inquilinoInstance != null
        assert view == '/inquilino/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/inquilino/show/1'
        assert controller.flash.message != null
        assert Inquilino.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/inquilino/list'


        populateValidParams(params)
        def inquilino = new Inquilino(params)

        assert inquilino.save() != null

        params.id = inquilino.id

        def model = controller.show()

        assert model.inquilinoInstance == inquilino
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/inquilino/list'


        populateValidParams(params)
        def inquilino = new Inquilino(params)

        assert inquilino.save() != null

        params.id = inquilino.id

        def model = controller.edit()

        assert model.inquilinoInstance == inquilino
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/inquilino/list'

        response.reset()


        populateValidParams(params)
        def inquilino = new Inquilino(params)

        assert inquilino.save() != null

        // test invalid parameters in update
        params.id = inquilino.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/inquilino/edit"
        assert model.inquilinoInstance != null

        inquilino.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/inquilino/show/$inquilino.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        inquilino.clearErrors()

        populateValidParams(params)
        params.id = inquilino.id
        params.version = -1
        controller.update()

        assert view == "/inquilino/edit"
        assert model.inquilinoInstance != null
        assert model.inquilinoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/inquilino/list'

        response.reset()

        populateValidParams(params)
        def inquilino = new Inquilino(params)

        assert inquilino.save() != null
        assert Inquilino.count() == 1

        params.id = inquilino.id

        controller.delete()

        assert Inquilino.count() == 0
        assert Inquilino.get(inquilino.id) == null
        assert response.redirectedUrl == '/inquilino/list'
    }
}
