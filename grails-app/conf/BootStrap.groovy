import goaccess.Papel
import goaccess.Cliente
import goaccess.ClientePapel
import goaccess.UsuarioSolicitante
import goaccess.Solicitacao
import goaccess.AutorizadorProf
import goaccess.OperadorCTI
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
			
			println("Criando primeiros CLIENTES: autorizador %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")			
			AutorizadorProf at = new AutorizadorProf()
			at.celularNum = '123'
			at.cpf = '1231231'
			at.email = 'autorizador01@eu.eu.br'
			at.nome = 'autorizador'
			at.password = 'autorizador'
			at.username = 'autorizador'
			at.numMemo = 123
			at.setorResponsavel = 'Setor1'
			at.papel = p_at
			at.save(flush: true, failOnError: true)
			ClientePapel.create at, p_at, true
			
			

			println("Criando primeiros CLIENTES: operador %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			OperadorCTI op = new OperadorCTI()
			op.celular = '123'
			op.cpf = '1231231123'
			op.email = 'operador@eu.eu.br'
			op.nome = 'operador'
			op.password = 'operador'
			op.username = 'operador'
			op.papel = p_op
			op.save(flush: true, failOnError: true)
			ClientePapel.create op, p_op, true
			

			//checa a quantidade no banco e o programa so vai rodar se ela estiver correta
			println("Checando se o banco esta' coerente %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
			assert Cliente.count() == 2
			assert Papel.count() == 2
			assert ClientePapel.count() == 2	
				
			if(Solicitacao.list().size() == 0){
				println("Criando primeiras Solicitacoes %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
				println("Criando primeiro Usuario %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
				UsuarioSolicitante usu = new UsuarioSolicitante()
				usu.bairro = 'bairro1'
				usu.celular = '123123'
				usu.cep = '123123'
				usu.complemento = 'complemento1'
				usu.cpf = '123123'
				usu.email = 'email1@eu.eu.br'
				usu.localidade = 'localidade1'
				usu.logradouro = 'logradouro1'
				usu.nome = 'Usuario Solicitante 01'
				usu.setor = 'setor1'
				usu.uf = 'uf'
				usu.save(flush: true, failOnError: true)			
				println("Quantidade de usuarios cadastrados: "+UsuarioSolicitante.count()+" %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
			
				def Solicitacao s = new Solicitacao()
				def data = new Date()
				//def String dataFormatada = g.formatDate(date:data, format: 'ddMMyyyy')				
				s.data = data
				s.numProtocolo = '150920159999'				
				s.status = 'Aguardando Aprovacao'
				s.tipo = 'Tipo1'
				s.autorizador = at
				s.operador = op
				s.usuario = usu
				s.save(flush: true, failOnError: true)
				println("Quantidade de solicitacoes cadastradas: "+Solicitacao.count()+" %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
							
			}
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
