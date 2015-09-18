<<<<<<< HEAD
<!DOCTYPE html>
<html>
<head>
	
	<title>Sistema de Solicitação de Acesso Wifi</title>
	<meta name="layout" content="main3">
	
<script type="text/javascript">
	$(document).ready(function(){
	$(".msg").tooltip({
	placement : 'right'
});
</script>

</head>
<body>
<div id="site">
	<div class="content packtlib" id="conteudo">

			<div class="row">
				<div class="col-md-4"></div>
				<div class="menu1 col-md-4">
				 <ul class="nav menu2">
					<h3><center>Escolha o Seu perfil</center></h3>
						<li><a class="link-normal msg" datatoggle="tooltip" 
						title="Profisionais de informática" 
						href="operadorCTI">
						<span class="glyphicon glyphicon-wrench"></span>
						Operador </a></li>
						<li><a class="link-normal msg" datatoggle="tooltip" 
						title="Professores Coordenadores e Palestrantes"
						href="autorizadorProf/index">
						<span class="glyphicon glyphicon-send"></span>
						Autorizador</a></li>
						<li><a class="link-normal msg" datatoggle="tooltip" 
						title="Alunos Visitantes e Terceirizados"
						href="#">
						<span class="glyphicon glyphicon-user"></span>
						Usuário</a></li>
					</ul>
				</div>
				<div class="col-md-4"></div>
			</div><!-- row -->
			<div class="row">
				<div class="col-md-3">
					<h1>Esse sistema bla bla bla	
					</h1>	
					<g:formRemote name="solicitacao" url="[controller:'solicitacao', action:'consultaStatus']" update="page-body">
		   				<label>Teste00: </label>
						<g:textField name="protocolo"/><br/>
		    			<g:actionSubmit value="Teste01" action="consultaStatus"/>
						<input type="submit" value="Test02"/>
					</g:formRemote>	
				</div>
				<div class="col-md-3" id="page-body" role="main">
					<div id="controller-list" role="navigation">
					</div>
				</div>
				<div class="col-md-6">
						------------------------------------------{Área de desenvolvimento. Será apagada antes da}------------------------------------------
<p>

	Click <a href="OutrasTarefas/indexInicial">aqui</a> para acessar a página inicial antiga! - Ultima atualizacao de Claudio = 12/09/15 - 17:43<br>
	Username logado = ${sec.loggedInUserInfo(field:'username')}
		
</p>

<p>
<br>
	Click <a href="status/status">aqui</a> para acessar a página de teste do ajax! - Ultima atualizacao de Denis = 19/08/15 - 20:08
</p>
			</div>
	    </div><!-- row -->
		<div id="rodape">
			<div id="copyright">
			Copyright &copy; MPROF2014
			</div>
			<div class="row">
			<div class="space col-md-2">
				<strong> Cláudio Luiz </strong><br>
				cl@cin.ufpe.br
			</div>
			<div class="space col-md-2">
				<strong> Denis Reis </strong><br>
				dpcr@cin.ufpe.br 
			</div>
			<div class="space col-md-2">
				<strong>Francisco Janiel </strong><br>
				fjo@cin.ufpe.br
			</div>
			<div class="space col-md-2">
				<strong> Jacks Renan </strong><br>
				jrnf@cin.ufpe.br 
			</div>
			<div class="space col-md-2">
				<strong>Shalton Viana</strong><br>
				svs2@cin.ufpe.br 
			</div>
		</div> <!-- rodape -->
</div> <!-- site -->
</body>
</html>
