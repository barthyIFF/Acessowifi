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
		<div id="page-body" role="main">
			<br><br><br>
			<h1>Bem vindo ao Sistema Acesso Wifi</h1>
			
			
			<p>Esse sistema bla bla bla			
			<g:form controller="Solicitacao" action="consultaStatus">
				<label>Teste00: </label>
				<g:textField name="protocolo"/><br/>
				<g:actionSubmit value="Teste01" action="consultaStatus"/>
				<input type="submit" value="Test02"/>
			</g:form>
			</p>
			
			<g:link controller="teste-01"> teste </g:link><br>
			
			<g:link controller="teste-aux"> teste auxiliar </g:link>
			
			<div id="controller-list" role="navigation">
				
			</div>
		</div>
<br><br><br><br><br><br><br><br><br><br><br>
		------------------------------------------{Área de desenvolvimento. Será apagada antes da}------------------------------------------
<p>

	Click <a href="OutrasTarefas/indexInicial">aqui</a> para acessar a página inicial antiga! - Ultima atualizacao de Claudio = 12/09/15 - 16:49<br>
	Username logado = ${sec.loggedInUserInfo(field:'username')}
		
</p>

<p>
<br>
	Click <a href="status/status">aqui</a> para acessar a página de teste do ajax! - Ultima atualizacao de Denis = 19/08/15 - 20:08
</p>
	</body>
</html>
