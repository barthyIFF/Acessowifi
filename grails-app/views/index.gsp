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
					</ul>
				</div>
				<div class="col-md-4"></div>
			</div><!-- row -->
			<div class="row">
				<div class="col-md-3">
					Sistema de solicitação de acesso a rede wireless do Instituto Federal.
					Para usa-lo clique em um dos perfis ao lado.<br>
					Caso você seja um usuario que solicitou acesso ao sistema e está aguardando a liberação,
					digite o número do seu protocolo de atendimento abaixo para consultar o status de sua 
					solicitação. 
						
					<g:formRemote name="solicitacao" url="[controller:'solicitacao', action:'consultaStatus']" update="page-body">
		   				<label>Protocolo: </label>
						<g:textField name="protocolo"/><br/>
		    			<g:actionSubmit value="Consultar" action="consultaStatus"/>
						
					</g:formRemote>	
				</div>
				<div class="col-md-3" id="page-body" role="main">
					<div id="controller-list" role="navigation">
					</div>
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