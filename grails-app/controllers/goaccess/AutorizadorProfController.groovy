package goaccess
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class AutorizadorProfController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AutorizadorProf.list(params), model:[autorizadorProfInstanceCount: AutorizadorProf.count()]
    }

    def show(AutorizadorProf autorizadorProfInstance) {
        respond autorizadorProfInstance
    }

    def create() {
        respond new AutorizadorProf(params)
    }

    @Transactional
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

    def edit(AutorizadorProf autorizadorProfInstance) {
        respond autorizadorProfInstance
    }

    @Transactional
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
