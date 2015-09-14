<!DOCTYPE html>
<html>
<head>
<title>Sistema de Solicitação de Acesso Wifi</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css" media="screen">
#menu {
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

</style>
</head>
<body>
<div class="container">
			<div class="row">
				<div class="col-md-2"> 
					<h1>Menu</h1>
					<div class="btn-group">
					<g:remoteLink controller="Solicitacao" action="index" update="page-body"><button type="button" class="btn success">Solicitações</button></g:remoteLink>
					<g:remoteLink controller="OperadorCTI" action="indexAntigo" update="page-body">Operadores</g:remoteLink>
					<g:remoteLink controller="UsuarioSolicitante" action="index" update="page-body">Usuários</g:remoteLink>
					<g:remoteLink controller="UsuarioTemporario" action="index" update="page-body">Usuários temporários</g:remoteLink>
					<g:remoteLink controller="Equipamento" action="index" update="page-body">Equipamentos</g:remoteLink>
					<g:remoteLink controller="autorizadorProf" action="indexAntigo" update="page-body">Autorizadores</g:remoteLink>
					<g:remoteLink controller="OutrasTarefas" action="autorizador" update="page-body">Encerrar Solicitacoes (P)</g:remoteLink>
					<a href="j_spring_security_logout">Fazer logout</a></li>		
					</div>
				</div>
			
				<div class="col-md-10" id="page-body">
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
</div>	
</body>
</html>