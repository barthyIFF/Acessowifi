package goaccess

import grails.converters.*;

class GostudentController {

    def index() {
	}
	
	
	def listPlacements() {
		
		def protocolo = params.protocolo
	
		def response = [:]
		
		def solicita = Solicitacao.findByNumProtocolo(protocolo)

			if (solicita && solicitacao.status == "AUTORIZADO"){
				response.Nome = usuario.nome
				response.Login = usuario.login
				response.HashSenha = usuario.hashSenha
			}else {
				response.msg = "AGUARDANDO AUTORIZAÇAO"
			}
						
		withFormat{
			html response
			json { render response as JSON }
			xml { render response as XML }
		}
	}
	
}
