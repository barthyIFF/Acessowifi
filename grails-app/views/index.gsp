<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main3">
	<title>Sistema de Solicitação de Acesso Wifi</title>
<script type="text/javascript">
	$(document).ready(function(){
	$(".msg").tooltip({
	placement : 'right'
});
</script>
<style>	
.link-normal {
	background: #43CD80;
	color: black;
	margin: 10px;
	padding: 20px;
	font-size:20px;

}
.link-normal a:houver{
 background-color: 	#9AFF9A;
}
#site{
	background:white;
	margin:0px;
}
#cabecalho{
	background-color: #eee;
}
#conteudo{
	margin:10px;
}

#status-login{
	backgroud:#eee;
	padding:20px;
	text-align: right;
	border: 1px solid black;
	margin:0;
	
}
.menu{
   float: left;

}
.menu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
ul{
	background:white;
}
.menu li {
 }

.principal{
   float: left;

   margin:0;
}
#grailsLogo{
	background-color: black;
	padding:10px;
	margin:0;
	
}
.space{
	text-align:center;
	float: left;
	padding:10px;
}
#copyright{
    border-style: solid;
    border-width: 0px 0px 7px 0px ;
    border-color:gray;
    padding:0px 0px 10px 0px;
}
#rodape{
	background: #000;
	color: gray;
	clear: both;
	text-align:center;
	padding:10px;
}
</style>	

</head>
<body>
<div id="site">
	<div class="content packtlib" id="conteudo">
		<div class="row">
			<div class="menu col-md-3">
				<ul class="nav">
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
			<div class="principal col-md-9">
			
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
		</div><!-- row -->
		<div class="menu col-md-3">
		Username logado = ${sec.loggedInUserInfo(field:'username')}
		</div>
		<div class="principal col-md-9">
						------------------------------------------{Área de desenvolvimento. Será apagada antes da}------------------------------------------
				<p>
				
					Click <a href="OutrasTarefas/indexInicial">aqui</a> para acessar a página inicial antiga! - Ultima atualizacao de Claudio = 12/09/15 - 16:49<br>
					Username logado = ${sec.loggedInUserInfo(field:'username')}
						
				</p>
				
				<p>
				<br>
					Click <a href="status/status">aqui</a> para acessar a página de teste do ajax! - Ultima atualizacao de Denis = 19/08/15 - 20:08
				</p>
			</div>
	
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
			</div> <!-- row -->		
		</div> <!-- rodape -->
</div> <!-- site -->
</body>
</html>
