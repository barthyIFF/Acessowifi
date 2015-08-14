package acessowifi

//import goaccess.UsuarioSolicitante;

class Endereco {

    Long id
	String cep
	String logradouro
	String complemento
	String bairro
	String localidade
	char uf
//	UsuarioSolicitante usuario
	
	String ToString () {
		"${this.cep}"
	}
	
//	static hasMany = [usuario:UsuarioSolicitante]
	
	static constraints = {
		id(nullable:false,blank:false,unique:true)
		cep(nullable:false,blank:false,unique:true, maxSize:11)
		logradouro(nullable:false,blank:false)
		complemento(nullable:false,blank:false)
		bairro(nullable:false,blank:false)
		localidade(nullable:false,blank:false)
		uf(nullable:false,blank:false,maxSize:2)
    }
}
