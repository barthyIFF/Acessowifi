package goaccess

class OperadorCTI {

	String nome
	String cpf
	String login
	String senha
	String hashSenha
	String email
	String celular
	
		
	static hasMany = [solicitacoes:Solicitacao]
	
	String toString () {
		"${this.nome}"
	}
	
    static constraints = {
		nome(nullable:false,blank:false)
		cpf(blank:false,unique:true)
		login(blank:false,unique:true)
		senha(blank:false)
		hashSenha (blank:false)
		email(email:true,blank:false)
		celular(blank:false)
    }
}