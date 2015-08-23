import goaccess.Papel
import goaccess.Cliente
import goaccess.ClientePapel
import goaccess.security.*
class BootStrap {

    def init = { servletContext ->
		/*Claudio 23/08/15- Criando usuarios com autenticacao e autorizacao
		 *Depois de rodar a app a primeira vez essas linhas podem ser apagadas
		 *ROLE_USER = AUTORIZADOR
		 *ROLE_ADMIN = OPERADOR
		 *Por enquanto, somente para testes, o autorizador so tem acesso a action OutrasTarefas/autorizador.
		 *Tb pra testes o operador NAO tem acesso a OutrasTarefas/autorizador.
		 *Operador tem acesso ao resto da app, por enquanto.
		 */
		
		def papelOperador = new Papel('ROLE_ADMIN').save()
		def papelAutorizador = new Papel('ROLE_USER').save()
  
		def operador = new Cliente('operador', 'operador').save()
		def autorizador = new Cliente('autorizador', 'autorizador').save()
		
	
			
		ClientePapel.create operador, papelOperador, true
		ClientePapel.create autorizador, papelAutorizador, true
  
		assert Cliente.count() == 2
		assert Papel.count() == 2
		assert ClientePapel.count() == 2
		
		/*Outras Pendencias:
		 * 	- Criar uma forma melhor para fazer logout ou trocar de usuario (verifiquei que plugin tem suporte a Switch User)
		 *  - Substituir a ROLE_ADMIN e ROLE_USER por OPERADOR e AUTORIZADOR nas definições do plugin
		 *  - Fazer o CRUD pra cadastrar usuario e senha. Acho que o erro é pq eu tenho que mandar gravar na tabela cliente_papel e não clientepapel
		 * 
		 * Defido a falta de tempo é possível que algumas pendencias não sejam solucionadas.
		 * Claudio - 23/08/15		
		 */
    }
    def destroy = {
    }
}
