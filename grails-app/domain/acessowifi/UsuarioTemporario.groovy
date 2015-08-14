package acessowifi

//import goaccess.UsuarioSolicitante;

class UsuarioTemporario extends UsuarioSolicitante{

	Integer tempoAcesso
	String evento
	String setorEvento
	Integer numEvento
	
	String ToString () {
		"${this.nome}"
	}
	 
    static constraints = {
		tempoAcesso(nullable:false,blank:false)
		evento(nullable:false,blank:false)
		setorEvento(nullable:false,blank:false)
		numEvento(nullable:false,blank:false)
    }
}
