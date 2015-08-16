package goaccess

class Solicitacao {

	String status
	Integer protocolo
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
		status(blank:false)
		protocolo(blank:false,unique:true,maxSize:13)
		tipo(blank:false)
		data(blank:false)
    }
}
