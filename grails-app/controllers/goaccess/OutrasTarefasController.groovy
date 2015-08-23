
package goaccess
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class OutrasTarefasController {
	
	def index(){
		
	}

    def indexInicial() {
		//render "OIiii!!!"
		/*Por enquanto serve apenas para direcionar para a página inicial padrao do Grails,
		 * pois ela tem informações que podem nos ajudar.*/
		
	}
	
	def seguro() {
		render "ambiente restrito, vc está autenticado!"
	}
}
