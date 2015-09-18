<%@ page import="goaccess.Solicitacao" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main"/>
<title>Sistema de Solicitação de Acesso Wifi</title>

	
</head>
<body>
<div id="menu" role="complementary">
	<h1>Menu - </h1>
	<ul>		
		<li><g:remoteLink controller="Solicitacao" action="indexAutorizador" update="page-body">Solicitações</g:remoteLink></li>
		<li><a href="j_spring_security_logout">Fazer logout</a></li>	
	</ul>
</div>

<div id="page-body" >
	<%--Texto para o autorizador --%>
	<h1>Seja bem Vindo, ${sec.username()}!</h1>
	<br>	
	<%--Verifica as solicitacoes pendentes --%>
	<g:if test="${solicitacoesPorAutorizadorEstatus?.size() == 0}">
    	<p>Atualmente não existem solicitações aguardando a sua autorização.</p>
	</g:if>
	<g:else>
		<p><font color="red">Existem ${solicitacoesPorAutorizadorEstatus?.size()} solicitações aguardando a sua autorização.<br>
		 Para autoriza-la(s) ou reprova-la(s) clique <g:remoteLink controller="Solicitacao" action="indexAutorizador" update="page-body">aqui</g:remoteLink> 
		 ou use o menu ao lado.</p></font>
	</g:else>			

<div id="controller-list" role="navigation"></div>
</div>
</body>
</html>