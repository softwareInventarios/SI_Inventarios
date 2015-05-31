package si_inventarios



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConteoController  {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Conteo.list(params), model:[conteoInstanceCount: Conteo.count()]
    }

    def show(Conteo conteoInstance) {
        respond conteoInstance
    }

    def create() {
        respond new Conteo(params)
    }

    @Transactional
    def save(Conteo conteoInstance) {
        if (conteoInstance == null) {
            notFound()
            return
        }

        if (conteoInstance.hasErrors()) {
            respond conteoInstance.errors, view:'create'
            return
        }

        conteoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'conteoInstance.label', default: 'Conteo'), conteoInstance.id])
                redirect conteoInstance
            }
            '*' { respond conteoInstance, [status: CREATED] }
        }
    }

    def edit(Conteo conteoInstance) {
        respond conteoInstance
    }

    @Transactional
    def update(Conteo conteoInstance) {
        if (conteoInstance == null) {
            notFound()
            return
        }

        if (conteoInstance.hasErrors()) {
            respond conteoInstance.errors, view:'edit'
            return
        }

        conteoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Conteo.label', default: 'Conteo'), conteoInstance.id])
                redirect conteoInstance
            }
            '*'{ respond conteoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Conteo conteoInstance) {

        if (conteoInstance == null) {
            notFound()
            return
        }

        conteoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Conteo.label', default: 'Conteo'), conteoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'conteoInstance.label', default: 'Conteo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
