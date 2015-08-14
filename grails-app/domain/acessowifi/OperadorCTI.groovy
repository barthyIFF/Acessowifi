package acessowifi

class OperadorCTI {

	Long id
	String nome
	String cpf
	String login
	String hashSenha
	String email
	String celular
	
//	static hasMany = [solicitacoes:Solicitacao]
	
	String ToString () {
		"${this.nome}"
	}
	
    static constraints = {
		id(nullable:false,blank:false,unique:true)
		nome(nullable:false,blank:false,unique:true)
		cpf(nullable:false,blank:false,unique:true,maxSize:11)
		login(nullable:false,blank:false,unique:true)
		hashSenha()
		email(nullable:false,blank:false,email:true)
		celular(nullable:false,blank:false,unique:true,maxSize:11)
    }
}