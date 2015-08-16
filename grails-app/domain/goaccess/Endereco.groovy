package goaccess

class Endereco {

    String cep
	String logradouro
	String complemento
	String bairro
	String localidade
	String uf
		
	static hasMany = [usuarios:UsuarioSolicitante]
		
	String toString () {
		"${this.cep}"
	}
	
	
	static constraints = {
		cep(blank:false)
		logradouro(blank:false)
		complemento(blank:false)
		bairro(blank:false)
		localidade(blank:false)
		uf(blank:false)
    }
}
