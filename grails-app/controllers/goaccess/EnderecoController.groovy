package goaccess
import grails.plugin.springsecurity.annotation.Secured
@Secured('ROLE_ADMIN')




import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EnderecoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	@Secured('ROLE_ADMIN')
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Endereco.list(params), model:[enderecoInstanceCount: Endereco.count()]
    }

    def show(Endereco enderecoInstance) {
        respond enderecoInstance
    }
	@Secured('ROLE_ADMIN')
    def create() {
        respond new Endereco(params)
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def save(Endereco enderecoInstance) {
        if (enderecoInstance == null) {
            notFound()
            return
        }

        if (enderecoInstance.hasErrors()) {
            respond enderecoInstance.errors, view:'create'
            return
        }

        enderecoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'endereco.label', default: 'Endereco'), enderecoInstance.id])
                redirect enderecoInstance
            }
            '*' { respond enderecoInstance, [status: CREATED] }
        }
    }
	@Secured('ROLE_ADMIN')
    def edit(Endereco enderecoInstance) {
        respond enderecoInstance
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def update(Endereco enderecoInstance) {
        if (enderecoInstance == null) {
            notFound()
            return
        }

        if (enderecoInstance.hasErrors()) {
            respond enderecoInstance.errors, view:'edit'
            return
        }

        enderecoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Endereco.label', default: 'Endereco'), enderecoInstance.id])
                redirect enderecoInstance
            }
            '*'{ respond enderecoInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def delete(Endereco enderecoInstance) {

        if (enderecoInstance == null) {
            notFound()
            return
        }

        enderecoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Endereco.label', default: 'Endereco'), enderecoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'endereco.label', default: 'Endereco'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
