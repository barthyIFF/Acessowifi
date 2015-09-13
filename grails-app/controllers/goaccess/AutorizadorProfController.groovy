package goaccess
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
class AutorizadorProfController {
    
	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	@Secured('ROLE_ADMIN')
	def indexAntigo(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond AutorizadorProf.list(params), model:[autorizadorProfInstanceCount: AutorizadorProf.count()]
	}	
	@Secured('ROLE_SUPERUSER')
	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AutorizadorProf.list(params), model:[autorizadorProfInstanceCount: AutorizadorProf.count()]
    }
	@Secured('ROLE_ADMIN')
	def show(AutorizadorProf autorizadorProfInstance) {
    respond autorizadorProfInstance
    }
	@Secured('ROLE_ADMIN')
    def create() {
        respond new AutorizadorProf(params)
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def save(AutorizadorProf autorizadorProfInstance) {
        if (autorizadorProfInstance == null) {
            notFound()
            return
        }

        if (autorizadorProfInstance.hasErrors()) {
            respond autorizadorProfInstance.errors, view:'create'
            return
        }

        autorizadorProfInstance.save flush:true
		Papel p = Papel.findByAuthority('ROLE_SUPERUSER')
		ClientePapel.create(autorizadorProfInstance,p);


        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'autorizadorProf.label', default: 'AutorizadorProf'), autorizadorProfInstance.id])
                redirect autorizadorProfInstance
            }
            '*' { respond autorizadorProfInstance, [status: CREATED] }
        }
    }
	@Secured('ROLE_ADMIN')
    def edit(AutorizadorProf autorizadorProfInstance) {
        respond autorizadorProfInstance
    }
	
    @Transactional
	@Secured('ROLE_ADMIN')
    def update(AutorizadorProf autorizadorProfInstance) {
        if (autorizadorProfInstance == null) {
            notFound()
            return
        }

        if (autorizadorProfInstance.hasErrors()) {
            respond autorizadorProfInstance.errors, view:'edit'
            return
        }

        autorizadorProfInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AutorizadorProf.label', default: 'AutorizadorProf'), autorizadorProfInstance.id])
                redirect autorizadorProfInstance
            }
            '*'{ respond autorizadorProfInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def delete(AutorizadorProf autorizadorProfInstance) {

        if (autorizadorProfInstance == null) {
            notFound()
            return
        }

        autorizadorProfInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AutorizadorProf.label', default: 'AutorizadorProf'), autorizadorProfInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'autorizadorProf.label', default: 'AutorizadorProf'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
