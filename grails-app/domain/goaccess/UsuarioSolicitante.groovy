package goaccess

class UsuarioSolicitante {

	String nome
	String cpf
	String email
	String setor
	String celular
	String login
	String senha
	String hashSenha
	String endereco
		
	static hasMany = [solicitacao:Solicitacao]	
	
	/*Para simplificar eu coloquei o endereco como um string simples
	Claudio 24/08/15*/
	//static belongsTo = Endereco
	
	String toString () {
		"${this.nome}"
	}
	
	
    static constraints = {
		nome(nullable:false,blank:false)
		cpf(blank:false,unique:true)
		email(email:true,blank:false)
		setor(blank:false)
		celular(blank:false)
		login(blank:false)
		senha(blank:false)
    }
}
