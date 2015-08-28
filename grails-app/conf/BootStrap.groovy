import goaccess.Papel
import goaccess.Cliente
import goaccess.ClientePapel
//Testando se nao precisa da linha abaixo
import goaccess.security.*
class BootStrap {

    def init = { servletContext ->
		/*Claudio 23/08/15- Criando usuarios com autenticacao e autorizacao
		 *Depois de rodar a app a primeira vez essas linhas podem ser apagadas
		 *ROLE_USER = AUTORIZADOR
		 *ROLE_ADMIN = OPERADOR
		 *Teste autorizador como ROLE_SUPERUSER e usuario como ROLE_USER 
		 *Por enquanto, somente para testes, o autorizador so tem acesso a action OutrasTarefas/autorizador.
		 *Tb pra testes o operador NAO tem acesso a OutrasTarefas/autorizador.
		 *Operador tem acesso ao resto da app, por enquanto.
		 */
				
		//Claudio - 28/08/15: Testando so mexer no banco se ele estiver vazio		
		if(ClientePapel.list().size() == 0){
			println("Criando primeiros PAPEIS: operador e autorizador %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			Papel p_op = new Papel('ROLE_ADMIN').save()
			Papel p_at = new Papel('ROLE_SUPERUSER').save()
			
			println("Criando primeiros CLIENTES: operador e autorizador %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			Cliente c_op = new Cliente('operador', 'operador').save()
			Cliente c_at = new Cliente('autorizador', 'autorizador').save()		

			println("Fazendo a primeira associacao CLIENTE_PAPEL para operador e autorizador %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
			ClientePapel.create c_op, p_op, true
			ClientePapel.create c_at, p_at, true
		
			//checa a quantidade no banco e o programa so vai rodar se ela estiver correta
			println("Checando se o banco esta' coerente %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
			assert Cliente.count() == 2
			assert Papel.count() == 2
			assert ClientePapel.count() == 2	
		}
		
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
