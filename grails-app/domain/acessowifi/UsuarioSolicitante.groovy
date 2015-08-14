package acessowifi

import acessowifi.Endereco;
import acessowifi.Solicitacao;

class UsuarioSolicitante {

	Long id
	String nome
	String cpf
	String email
	String setor
	String celular
	String login
	String senha
	Solicitacao solicitacao
	Endereco endereco
	
	String ToString () {
		"${this.nome}"
	}
	
	static belongsTo = Endereco
	
    static constraints = {
		id(nullable:false,blank:false,unique:true)
		nome(nullable:false,blank:false,unique:true)
		cpf(nullable:false,blank:false,unique:true,maxSize:11)
		endereco(nullable:false,blank:false)
		email(nullable:false,blank:false,unique:true,email:true)
		setor(nullalbe:false,blank:false)
		celular(nullable:false,blank:false,unique:true)
		login(nullable:false,blank:false,unique:true)
		senha(nullable:false,blank:false,unique:true)
    }
}

