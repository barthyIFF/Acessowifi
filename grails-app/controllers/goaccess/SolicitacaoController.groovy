package goaccess
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.security.core.userdetails.User
import org.springframework.security.core.Authentication
import org.springframework.security.core.context.SecurityContextHolder
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class SolicitacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	@Secured('ROLE_ADMIN')
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Solicitacao.list(params), model:[solicitacaoInstanceCount: Solicitacao.count()]
    }
	
	

	@Secured('ROLE_SUPERUSER')
	def indexAutorizador(Integer max) {
		//[Claudio - 10/09/15] Listando apenas as solicitacoes do username que está logado atualmente	
		User operadorLogado = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()		
		AutorizadorProf autorizador = AutorizadorProf.findByUsername(operadorLogado.username)		
		def solicitacoesPorAutorizador = Solicitacao.findAllByAutorizador(autorizador)
		[solicitacoesPorAutorizador:solicitacoesPorAutorizador]
	}
	
	@Secured('ROLE_SUPERUSER')
	//PENDENCIA: Aqui vai se chamar aprovaSolic e havera outra action de nome reprovaSolic
	def mudaStatus(Solicitacao solicitacaoInstance) {
		if (solicitacaoInstance == null) {
			notFound()
			return 
		}

		if (solicitacaoInstance.hasErrors()) {
			respond solicitacaoInstance.errors, view:'indexAutorizador'
			return
		}	
		//def Solicitacao s = Solicitacao.get(solicitacaoInstance.id)
		//s.save(flush:true)
		solicitacaoInstance.status = "Aguardando Aprovaca"
		solicitacaoInstance.save(flush:true)
	    render "Solicitacao APROVADA com sucesso!"	
				
	}
	
	@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
	def consultaStatus() {
		Solicitacao s = Solicitacao.findByNumProtocolo(params.protocolo)
		if (s == null)
			render "Resposta do teste: Nao encontrada"
		else
			render "Resposta do teste: "+s.status
	}

	
	@Secured('ROLE_ADMIN')
    def show(Solicitacao solicitacaoInstance) {
        respond solicitacaoInstance
    }
	@Secured('ROLE_ADMIN')
    def create() {
        respond new Solicitacao(params)
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def save(Solicitacao solicitacaoInstance) {
        if (solicitacaoInstance == null) {
            notFound()
            return
        }

        if (solicitacaoInstance.hasErrors()) {
            respond solicitacaoInstance.errors, view:'create'
            return
        }
		
		//Definindo o numero do protocolo automaticamente
		def data = new Date()
		//Fomata a data
		def dataFormatada = g.formatDate(date:data, format: 'ddMMyyyy')
		//Pega a solicitacao com o maior ID no banco
		def s = Solicitacao.listOrderById(max:2, order: "desc")[0]
		//Pega somente o maior ID e o incrementa
		int ultimoId = s.id
		ultimoId = ultimoId+1
		//Colocando zeros a esquerrda para que fique compativel com a consulta Rest
		String ultimoIdCom0s = String.format("%05d", ultimoId);
		//Define o numProtocolo
		solicitacaoInstance.numProtocolo =  dataFormatada+ultimoIdCom0s

        solicitacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'solicitacao.label', default: 'Solicitacao'), solicitacaoInstance.id])
                redirect solicitacaoInstance
            }
            '*' { respond solicitacaoInstance, [status: CREATED] }
        }
    }
	
	@Secured('ROLE_ADMIN')
    def edit(Solicitacao solicitacaoInstance) {
        respond solicitacaoInstance
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def update(Solicitacao solicitacaoInstance) {
        if (solicitacaoInstance == null) {
            notFound()
            return
        }

        if (solicitacaoInstance.hasErrors()) {
            respond solicitacaoInstance.errors, view:'edit'
            return
        }

        solicitacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Solicitacao.label', default: 'Solicitacao'), solicitacaoInstance.id])
                redirect solicitacaoInstance
            }
            '*'{ respond solicitacaoInstance, [status: OK] }
        }
    }

    @Transactional
	@Secured('ROLE_ADMIN')
    def delete(Solicitacao solicitacaoInstance) {

        if (solicitacaoInstance == null) {
            notFound()
            return
        }

        solicitacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Solicitacao.label', default: 'Solicitacao'), solicitacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'solicitacao.label', default: 'Solicitacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
