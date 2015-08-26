<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main"/>
<title>Sistema de Solicitação de Acesso Wifi</title>

	
</head>
<body>
<div id="menu" role="complementary">
	<h1>Menu</h1>
	<ul>
		<li><g:remoteLink controller="Solicitacao" action="index" update="page-body">Solicitações</g:remoteLink></li>
		<li><g:remoteLink controller="OperadorCTI" action="indexAntigo" update="page-body">Operadores (P)</g:remoteLink></li>
		<li><g:remoteLink controller="UsuarioSolicitante" action="index" update="page-body">Usuários</g:remoteLink></li>
		<li><g:remoteLink controller="UsuarioTemporario" action="index" update="page-body">Usuários temporários</g:remoteLink></li>
		<li><g:remoteLink controller="Equipamento" action="index" update="page-body">Equipamentos</g:remoteLink></li>
		<li><g:remoteLink controller="Equipamento" action="index" update="page-body">Autorizador</g:remoteLink></li>
		<li><g:remoteLink controller="OutrasTarefas" action="autorizador" update="page-body">Encerrar Solicitacoes (P)</g:remoteLink></li>
		<li><a href="j_spring_security_logout">Fazer logout</a></li>		
	</ul>
</div>

<div id="page-body" >
	<h1>Sem bem Vindo, Operador</h1>
	<p>
		Texto para o operador...Texto para o operador...Texto para o operador...<br>
		Texto para o operador...Texto para o operador...Texto para o operador...<br>
		Texto para o operador...Texto para o operador...Texto para o operador...<br>
		<br>
		PENDENCIA: tentar colocar aqui uma lista das solicitacoes pendentes, a serem encerradas!<br>
		<br>
		PENDENCIA EM CADASTRO DE OPERADORES E AUTORIZADORES: Tem que pegar o usuario e a senha<br>
		informados e, automaticamente, tb fazer o cadastro em clientes, papelcliente e papel (autenticacao).
			
	</p>
	<div id="controller-list" role="navigation"></div>
</div>
</body>
</html>