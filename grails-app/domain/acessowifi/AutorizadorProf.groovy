package acessowifi

class AutorizadorProf {

	Long id
	String nome
	String cpf
	String login
	String senha
	String hashSenha
	String setorResponsavel
	Integer numMemo
	String celular
	
	String ToString () {
		"${this.nome}"
	}
	
	//static hasMany = [solicitacoes:Solicitacao]
	
    static constraints = {
		id(nullable:false,blank:false,unique:true)
		nome(nullable:false,blank:false)
		cpf(nullable:false,blank:false,unique:true,maxSize:11)
		login(nullable:false,blank:false,unique:true)
		senha(nullable:false,blank:false)
		setorResponsavel(nullable:false,blank:false)
		numMemo(nullable:false,blank:false,unique:true,maxSize:3)
		celular(nullable:false,blank:false,unique:true,maxSize:11)
    }
}
