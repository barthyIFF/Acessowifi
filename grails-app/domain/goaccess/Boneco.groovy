package goaccess

class Boneco extends Cliente {
	String nome
	
	
	static belongsTo = [papel:Papel]
	static constraints = {}
	
}
