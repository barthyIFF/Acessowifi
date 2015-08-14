package acessowifi

//import goaccess.Solicitacao;

class Equipamento {

	Long id
	String ip
	String mac
//	Solicitacao solicitacao
	
	String ToString () {
		"${this.mac}"
	}
	
	//static belongsTo = Solicitacao
	
    static constraints = {
		id(nullable:false,blank:false,unique:true)
		ip(nullable:false,blank:false,unique:true,maxSize:12)
		mac(nullable:false,blank:false,unique:true)
    }
}