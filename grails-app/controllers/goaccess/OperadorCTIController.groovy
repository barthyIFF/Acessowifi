package goaccess



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OperadorCTIController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OperadorCTI.list(params), model:[operadorCTIInstanceCount: OperadorCTI.count()]
    }

    def show(OperadorCTI operadorCTIInstance) {
        respond operadorCTIInstance
    }

    def create() {
        respond new OperadorCTI(params)
    }

    @Transactional
    def save(OperadorCTI operadorCTIInstance) {
        if (operadorCTIInstance == null) {
            notFound()
            return
        }

        if (operadorCTIInstance.hasErrors()) {
            respond operadorCTIInstance.errors, view:'create'
            return
        }

        operadorCTIInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'operadorCTI.label', default: 'OperadorCTI'), operadorCTIInstance.id])
                redirect operadorCTIInstance
            }
            '*' { respond operadorCTIInstance, [status: CREATED] }
        }
    }

    def edit(OperadorCTI operadorCTIInstance) {
        respond operadorCTIInstance
    }

    @Transactional
    def update(OperadorCTI operadorCTIInstance) {
        if (operadorCTIInstance == null) {
            notFound()
            return
        }

        if (operadorCTIInstance.hasErrors()) {
            respond operadorCTIInstance.errors, view:'edit'
            return
        }

        operadorCTIInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OperadorCTI.label', default: 'OperadorCTI'), operadorCTIInstance.id])
                redirect operadorCTIInstance
            }
            '*'{ respond operadorCTIInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OperadorCTI operadorCTIInstance) {

        if (operadorCTIInstance == null) {
            notFound()
            return
        }

        operadorCTIInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OperadorCTI.label', default: 'OperadorCTI'), operadorCTIInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'operadorCTI.label', default: 'OperadorCTI'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
