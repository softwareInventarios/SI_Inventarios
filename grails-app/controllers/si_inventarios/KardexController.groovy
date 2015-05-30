package si_inventarios



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class KardexController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Kardex.list(params), model:[kardexInstanceCount: Kardex.count()]
    }

    def show(Kardex kardexInstance) {
        respond kardexInstance
    }

    def create() {
        respond new Kardex(params)
    }

    @Transactional
    def save(Kardex kardexInstance) {
        if (kardexInstance == null) {
            notFound()
            return
        }

        if (kardexInstance.hasErrors()) {
            respond kardexInstance.errors, view:'create'
            return
        }

        kardexInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'kardexInstance.label', default: 'Kardex'), kardexInstance.id])
                redirect kardexInstance
            }
            '*' { respond kardexInstance, [status: CREATED] }
        }
    }

    def edit(Kardex kardexInstance) {
        respond kardexInstance
    }

    @Transactional
    def update(Kardex kardexInstance) {
        if (kardexInstance == null) {
            notFound()
            return
        }

        if (kardexInstance.hasErrors()) {
            respond kardexInstance.errors, view:'edit'
            return
        }

        kardexInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Kardex.label', default: 'Kardex'), kardexInstance.id])
                redirect kardexInstance
            }
            '*'{ respond kardexInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Kardex kardexInstance) {

        if (kardexInstance == null) {
            notFound()
            return
        }

        kardexInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Kardex.label', default: 'Kardex'), kardexInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'kardexInstance.label', default: 'Kardex'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
