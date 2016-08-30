package inmobadmin



import org.junit.*
import grails.test.mixin.*

@TestFor(PropietarioController)
@Mock(Propietario)
class PropietarioControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/propietario/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.propietarioInstanceList.size() == 0
        assert model.propietarioInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.propietarioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.propietarioInstance != null
        assert view == '/propietario/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/propietario/show/1'
        assert controller.flash.message != null
        assert Propietario.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/propietario/list'


        populateValidParams(params)
        def propietario = new Propietario(params)

        assert propietario.save() != null

        params.id = propietario.id

        def model = controller.show()

        assert model.propietarioInstance == propietario
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/propietario/list'


        populateValidParams(params)
        def propietario = new Propietario(params)

        assert propietario.save() != null

        params.id = propietario.id

        def model = controller.edit()

        assert model.propietarioInstance == propietario
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/propietario/list'

        response.reset()


        populateValidParams(params)
        def propietario = new Propietario(params)

        assert propietario.save() != null

        // test invalid parameters in update
        params.id = propietario.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/propietario/edit"
        assert model.propietarioInstance != null

        propietario.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/propietario/show/$propietario.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        propietario.clearErrors()

        populateValidParams(params)
        params.id = propietario.id
        params.version = -1
        controller.update()

        assert view == "/propietario/edit"
        assert model.propietarioInstance != null
        assert model.propietarioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/propietario/list'

        response.reset()

        populateValidParams(params)
        def propietario = new Propietario(params)

        assert propietario.save() != null
        assert Propietario.count() == 1

        params.id = propietario.id

        controller.delete()

        assert Propietario.count() == 0
        assert Propietario.get(propietario.id) == null
        assert response.redirectedUrl == '/propietario/list'
    }
}
