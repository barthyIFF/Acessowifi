package goaccess

class Solicitacao {

	String protocolo
	String status
	String tipo
	OperadorCTI operador
	AutorizadorProf autorizador
	UsuarioSolicitante usuario
	Date data
	
	
	String toString(){
		"${this.protocolo}"
	}
	
	static belongsTo = [OperadorCTI,AutorizadorProf,UsuarioSolicitante]
	
	static hasMany = [equipamentos:Equipamento]
	
	static constraints = {
		protocolo(nullable:false,blank:false,unique:true)
		status(blank:false)
		tipo(blank:false)
		data(blank:false)
    }
}
