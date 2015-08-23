import goaccess.Papel
import goaccess.Cliente
import goaccess.ClientePapel
import goaccess.security.*
class BootStrap {
	def springSecurityService

    def init = { servletContext ->	
			
		/*def papel = new Papel(authority:  "ROLE_ADMIN")
		papel.save(flush: true)
		
		def cliente = new Cliente(username: "teste", password: "111", accountExpired: false, accountLocked: false, passwordExpired: false, enabled: true)
		cliente.save(flush: true)
		
		ClientePapel.create(cliente, papel)*/
		
		def adminRole = new Papel('ROLE_ADMIN').save()
		def userRole = new Papel('ROLE_USER').save()
  
		def testUser = new Cliente('eu', '111').save()
		
	
			
		ClientePapel.create testUser, adminRole, true
  
		assert Cliente.count() == 1
		assert Papel.count() == 2
		assert ClientePapel.count() == 1
		
		/*def adminRole = new Papel(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Papel(authority: 'ROLE_USER').save(flush: true)
		
		//String password = springSecurityService.encodePassword('111')
		
		def testUser = new Cliente(username: 'eu', enabled: true, password: '111')
		
		testUser.save(flush: true)		 
		
		ClientePapel.create testUser, adminRole, true*/
		
    }
    def destroy = {
    }
}
