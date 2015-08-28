package goaccess
import grails.plugin.springsecurity.annotation.Secured




import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured('ROLE_ADMIN')
class BonecoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Boneco.list(params), model:[bonecoInstanceCount: Boneco.count()]
    }

    def show(Boneco bonecoInstance) {
        respond bonecoInstance
    }

    def create() {
        respond new Boneco(params)
    }

    @Transactional
    def save(Boneco bonecoInstance) {
        if (bonecoInstance == null) {
            notFound()
            return
        }

        if (bonecoInstance.hasErrors()) {
            respond bonecoInstance.errors, view:'create'
            return
        }

        bonecoInstance.save flush:true
		
		//Codigo para gravar tb um papel para o usuario
		Papel p = bonecoInstance.papel;
		ClientePapel.create(bonecoInstance,p);	

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'boneco.label', default: 'Boneco'), bonecoInstance.id])
                redirect bonecoInstance
            }
            '*' { respond bonecoInstance, [status: CREATED] }
        }
    }

    def edit(Boneco bonecoInstance) {
        respond bonecoInstance
    }

    @Transactional
    def update(Boneco bonecoInstance) {
        if (bonecoInstance == null) {
            notFound()
            return
        }

        if (bonecoInstance.hasErrors()) {
            respond bonecoInstance.errors, view:'edit'
            return
        }

        bonecoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Boneco.label', default: 'Boneco'), bonecoInstance.id])
                redirect bonecoInstance
            }
            '*'{ respond bonecoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Boneco bonecoInstance) {

        if (bonecoInstance == null) {
            notFound()
            return
        }

        bonecoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Boneco.label', default: 'Boneco'), bonecoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'boneco.label', default: 'Boneco'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
