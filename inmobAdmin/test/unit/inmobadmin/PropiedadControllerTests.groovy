package inmobadmin



import org.junit.*
import grails.test.mixin.*

@TestFor(PropiedadController)
@Mock(Propiedad)
class PropiedadControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/propiedad/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.propiedadInstanceList.size() == 0
        assert model.propiedadInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.propiedadInstance != null
    }

    void testSave() {
        controller.save()

        assert model.propiedadInstance != null
        assert view == '/propiedad/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/propiedad/show/1'
        assert controller.flash.message != null
        assert Propiedad.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/propiedad/list'


        populateValidParams(params)
        def propiedad = new Propiedad(params)

        assert propiedad.save() != null

        params.id = propiedad.id

        def model = controller.show()

        assert model.propiedadInstance == propiedad
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/propiedad/list'


        populateValidParams(params)
        def propiedad = new Propiedad(params)

        assert propiedad.save() != null

        params.id = propiedad.id

        def model = controller.edit()

        assert model.propiedadInstance == propiedad
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/propiedad/list'

        response.reset()


        populateValidParams(params)
        def propiedad = new Propiedad(params)

        assert propiedad.save() != null

        // test invalid parameters in update
        params.id = propiedad.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/propiedad/edit"
        assert model.propiedadInstance != null

        propiedad.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/propiedad/show/$propiedad.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        propiedad.clearErrors()

        populateValidParams(params)
        params.id = propiedad.id
        params.version = -1
        controller.update()

        assert view == "/propiedad/edit"
        assert model.propiedadInstance != null
        assert model.propiedadInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/propiedad/list'

        response.reset()

        populateValidParams(params)
        def propiedad = new Propiedad(params)

        assert propiedad.save() != null
        assert Propiedad.count() == 1

        params.id = propiedad.id

        controller.delete()

        assert Propiedad.count() == 0
        assert Propiedad.get(propiedad.id) == null
        assert response.redirectedUrl == '/propiedad/list'
    }
}
