<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sistema de Solicitação de Acesso Wifi</title>
	</head>
	<body>
			<div id="menu" role="complementary">
			<h1>Clique no seu perfil</h1>
			<ul>
				<li><a href="operadorCTI">Operador</a> </li>
				<li><a href="autorizadorProf/index">Autorizador de solicitações</a> </li>
				<li>Usuário</li>
				<li><a href="j_spring_security_logout">Logout</a></li>
			</ul>
		</div>
		<div>
		<h1><br><br><br><br>
		Esse sistema bla bla bla	
		</h1>	
			<g:formRemote name="solicitacao" url="[controller:'solicitacao', action:'consultaStatus']" update="page-body">
   				<label>Teste00: </label>
				<g:textField name="protocolo"/><br/>
    			<g:actionSubmit value="Teste01" action="consultaStatus"/>
				<input type="submit" value="Test02"/>
			</g:formRemote>	
		</div>
		<div id="page-body" role="main">
		<div id="controller-list" role="navigation">
				
			</div>
		</div>
<br><br><br><br><br><br><br><br><br><br><br>
		------------------------------------------{Área de desenvolvimento. Será apagada antes da}------------------------------------------
<p>

	Click <a href="OutrasTarefas/indexInicial">aqui</a> para acessar a página inicial antiga! - Ultima atualizacao de Claudio = 12/09/15 - 17:43<br>
	Username logado = ${sec.loggedInUserInfo(field:'username')}
		
</p>

<p>
<br>
	Click <a href="status/status">aqui</a> para acessar a página de teste do ajax! - Ultima atualizacao de Denis = 19/08/15 - 20:08
</p>
	</body>
</html>
