package acessowifi

//import goaccess.AutorizadorProf;
//import goaccess.Equipamento;
//import goaccess.OperadorCTI;
//import goaccess.UsuarioSolicitante;

import java.util.Date;
import java.util.List;

class Solicitacao {

	Long id
	String status
	Integer protocolo
	String tipo
	OperadorCTI operador
	AutorizadorProf autorizador
	UsuarioSolicitante usuario
	List<Equipamento> equipamento
	Date data
	
	String ToString () {
		"${this.usuario}"
	}
	
	//static belongsTo = [OperadorCTI,AutorizadorProf]
	
	//static hasMany = [equipamentos:Equipamento]
	
	static constraints = {
		id(nullable:false,blank:false,unique:true)
		status(nullable:false,blank:false)
		protocolo(nullable:false,blank:false,unique:true,maxSize:13)
		tipo(nullable:false,blank:false)
		data(nullable:false,blank:false)
    }
}
