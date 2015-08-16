package goaccess

class Equipamento {

	String ip
	String mac
	Solicitacao solicitacao
		
	String toString () {
		"${this.mac}"
	}
	
	static belongsTo = Solicitacao
	
    static constraints = {
		ip(blank:false,unique:true,maxSize:15)
		mac(blank:false,unique:true)
    }
}
