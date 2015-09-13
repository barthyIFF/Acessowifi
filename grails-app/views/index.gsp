<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Sistema de Solicitação de Acesso Wifi</title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<!-- <div id="menu" role="complementary"> -->
					<h4>Clique no seu perfil</h4>
					<ul class="nav nav-tabs">
						<li class="active"><a href="operadorCTI">
						<span class="glyphicon glyphicon-sd-video"> </span>
						Operador </a> </li>
						<li><a href="autorizadorProf/index">
						<span class="glyphicon glyphicon-book"> </span>
						Autorizador</a></li>
						<li><a href="#"> <span class="glyphicon glyphicon-inbox"> </span>
						Usuário</a></li>
					</ul>
				
				</div>
				<div class="col-md-9">
				<!-- <div id="page-body" role="main"> -->
					
					<h1>Bem vindo ao Sistema Acesso Wifi</h1>
					<p>Esse sistema bla bla bla			
					<g:form controller="Solicitacao" action="consultaStatus">
						<label>Teste00: </label>
						<g:textField name="protocolo"/><br/>
						<g:actionSubmit value="Teste01" action="consultaStatus"/>
						<input type="submit" value="Test02"/>
					</g:form>
					</p>
					<div id="controller-list" role="navigation">
				</div>
			</div>
		</div>	
<br><br><br><br><br>
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
