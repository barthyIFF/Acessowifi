<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main"/>
<title>Sistema de Solicitação de Acesso Wifi</title>
<style type="text/css" media="screen">
	#status {
		background-color: #eee;
		border: .2em solid #fff;
		margin: 2em 2em 1em;
		padding: 1em;
		width: 12em;
		float: left;
		-moz-box-shadow: 0px 0px 1.25em #ccc;
		-webkit-box-shadow: 0px 0px 1.25em #ccc;
		box-shadow: 0px 0px 1.25em #ccc;
		-moz-border-radius: 0.6em;
		-webkit-border-radius: 0.6em;
		border-radius: 0.6em;
	}

	.ie6 #status {
		display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
	}

	#status ul {
		font-size: 0.9em;
		list-style-type: none;
		margin-bottom: 0.6em;
		padding: 0;
	}

	#status li {
		line-height: 2.1;
	}

	#status h1 {
		text-transform: uppercase;
		font-size: 1.1em;
		margin: 0 0 0.3em;
	}

	#page-body {
		margin: 2em 1em 1.25em 18em;
	}

	h2 {
		margin-top: 1em;
		margin-bottom: 0.3em;
		font-size: 1em;
	}

	p {
		line-height: 1.5;
		margin: 0.25em 0;
	}

	#controller-list ul {
		list-style-position: inside;
	}

	#controller-list li {
		line-height: 1.3;
		list-style-position: inside;
		margin: 0.25em 0;
	}

	@media screen and (max-width: 480px) {
		#status {
			display: none;
		}

		#page-body {
			margin: 0 1em 1em;
		}

		#page-body h1 {
			margin-top: 0;
		}
			}
	</style>
</head>
<body>
<div id="status" role="complementary">
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

<div id="page-body" role="main">
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