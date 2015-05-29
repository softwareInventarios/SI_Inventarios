package si_inventarios



import grails.test.mixin.*
import spock.lang.*

@TestFor(ConteoController)
@Mock(Conteo)
class ConteoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.conteoInstanceList
            model.conteoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.conteoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def conteo = new Conteo()
            conteo.validate()
            controller.save(conteo)

        then:"The create view is rendered again with the correct model"
            model.conteoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            conteo = new Conteo(params)

            controller.save(conteo)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/conteo/show/1'
            controller.flash.message != null
            Conteo.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def conteo = new Conteo(params)
            controller.show(conteo)

        then:"A model is populated containing the domain instance"
            model.conteoInstance == conteo
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def conteo = new Conteo(params)
            controller.edit(conteo)

        then:"A model is populated containing the domain instance"
            model.conteoInstance == conteo
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/conteo/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def conteo = new Conteo()
            conteo.validate()
            controller.update(conteo)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.conteoInstance == conteo

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            conteo = new Conteo(params).save(flush: true)
            controller.update(conteo)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/conteo/show/$conteo.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/conteo/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def conteo = new Conteo(params).save(flush: true)

        then:"It exists"
            Conteo.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(conteo)

        then:"The instance is deleted"
            Conteo.count() == 0
            response.redirectedUrl == '/conteo/index'
            flash.message != null
    }
}
