<!DOCTYPE html>
<html>
<head>
<title>Sistema de Solicitação de Acesso Wifi</title>
<meta name="layout" content="main4">
<style>
#packt {
border-style: solid;
border-color: black;
color: #FF00FF;
}
#pub {
border-style: solid;
border-color: red;
color: green;
}
#packtlib {
border-style: dotted;
border-color: lime;
}
#page-body {
border-style: dotted;
border-color: blue;	
}
</style>

</head>
<body class="page">
	<div class="content" id="packt">
			<div class="row" id ="packtlib">
				<div class="col-md-3" id="pub"> 
					
					<!-- <div class="btn-group">
					<button class="btn btn-primary">Menu</button>
					<button data-toggle="dropdown" class="btn btn-primary
					dropdown-toggle"><span class="caret"></span></button>
					<ul class="dropdown-menu"> -->
					<ul>
						<li><g:remoteLink controller="Solicitacao" action="index" update="page-body">Solicitações</g:remoteLink></li>
						<li><g:remoteLink controller="OperadorCTI" action="indexAntigo" update="page-body">Operadores</g:remoteLink></li>
						<li><g:remoteLink controller="UsuarioSolicitante" action="index" update="page-body">Usuários</g:remoteLink></li>
						<li><g:remoteLink controller="UsuarioTemporario" action="index" update="page-body">Usuários temporários</g:remoteLink></li>
						<li><g:remoteLink controller="Equipamento" action="index" update="page-body">Equipamentos</g:remoteLink></li>
						<li><g:remoteLink controller="autorizadorProf" action="indexAntigo" update="page-body">Autorizadores</g:remoteLink></li>
						<li><g:remoteLink controller="OutrasTarefas" action="autorizador" update="page-body">Encerrar Solicitacoes (P)</g:remoteLink></li>
						<li><a href="j_spring_security_logout">Fazer logout</a></li>
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
</body>
</html>