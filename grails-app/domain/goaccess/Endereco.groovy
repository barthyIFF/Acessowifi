package goaccess

class Endereco {

    String cep
	String logradouro
	String complemento
	String bairro
	String localidade
	String uf
		
	static hasMany = [usuarios:UsuarioSolicitante]
		
	String ToString () {
		"${this.cep}"
	}
	
	
	static constraints = {
		cep(blank:false,unique:true)
		logradouro(blank:false)
		complemento(blank:false)
		bairro(blank:false)
		localidade(blank:false)
		uf(nullable:false,blank:false,maxSize:2)
    }
}
