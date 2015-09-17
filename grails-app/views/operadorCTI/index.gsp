<!DOCTYPE html>
<html>
<head>
<title>Sistema de Solicitação de Acesso Wifi</title>
<meta name="layout" content="main4">
</head>
<body class="page">
	<div class="conteudo">
			<div class="row">
				<div class="col-md-3"> 
					<ul class="nav nav-pills nav-stacked">
						<li><g:remoteLink class="link-normal" controller="Solicitacao" action="create" update="page-body">
						<span class="glyphicon glyphicon-file"></span>&nbsp;Nova Solicitação</g:remoteLink></li>
						<li><g:remoteLink class="link-normal" controller="Solicitacao" action="index" update="page-body">
						<span class="glyphicon glyphicon-list-alt"></span>&nbsp;Lista de solicitacoes</g:remoteLink></li>
						<li><g:remoteLink class="link-normal" controller="OperadorCTI" action="indexAntigo" update="page-body">
						<span class="glyphicon glyphicon-wrench"></span>&nbsp;Operadores</g:remoteLink></li>
						<li><g:remoteLink class="link-normal" controller="UsuarioSolicitante" action="index" update="page-body">
						<span class="glyphicon glyphicon-user"></span>&nbsp;Usuários</g:remoteLink></li>
						<li><g:remoteLink class="link-normal" controller="UsuarioTemporario" action="index" update="page-body">
						<span class="glyphicon glyphicon-time"></span>Usuários temporários</g:remoteLink></li>
						<li><g:remoteLink class="link-normal" controller="Equipamento" action="index" update="page-body">
						<span class="glyphicon glyphicon-phone"></span>&nbsp;Equipamentos</g:remoteLink></li>
						<li><g:remoteLink class="link-normal" controller="autorizadorProf" action="indexAntigo" update="page-body">
						<span class="glyphicon glyphicon-send"></span>&nbsp;Autorizadores</g:remoteLink></li>
						<li><g:remoteLink class="link-normal" controller="OutrasTarefas" action="autorizador" update="page-body">
						<span class="glyphicon glyphicon-tasks"></span>&nbsp;Encerrar Solicitacoes (P)</g:remoteLink></li>
						<li><a class="link-normal" href="j_spring_security_logout">
						<span class="glyphicon glyphicon-log-out"></span>&nbsp;Fazer logout</a></li>
					</ul>	
				</div>
				<div class="col-md-9" id="page-body">
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
				</div>
			</div>
	</div>
		<footer class="site-footer">
		Copyright &copy; 2014
	</footer>	
</body>
</html>
