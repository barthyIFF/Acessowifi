<%@ page import="goaccess.Solicitacao" %>
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
		<%--Solicitacoes aguardando aprovacao --%>
		<li><g:remoteLink controller="Solicitacao" action="indexAutorizador" update="page-body">Solicitações</g:remoteLink></li>
		<%--Todas as solicitacoes --%>
		<li><g:remoteLink controller="Solicitacao" action="index" update="page-body">Ver solicitações aprovadas</g:remoteLink></li>
		<li><a href="../j_spring_security_logout">Fazer logout</a></li>		
	</ul>
</div>

<div id="page-body" >
	<h1>Senhor ${sec.username()}, as solicitações abaixo estão aguardando a sua aprovação:</h1><br>
	<%--
	<%def user = springSecurityService.currentUser%>	
	<%= user %>
	${user}
	 --%>
	Username logado = ${sec.loggedInUserInfo(field:'username')}<br>
	${sec.username()}<br>

	<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">		
		${i+1}. ${sol.numProtocolo}; Autorizador = ${sol.autorizador}<br/>
	</g:each><br>

	<hr>
	
	<%--
	<g:findall in="${solicitacoesPorAutorizador}" expr="true">
    	<p>${i+1}. ${sol.numProtocolo}; Autorizador = ${sol.autorizador}</p>
	</g:findall>
	 --%>
	<p>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="numProtocolo" title="${message(code: 'solicitacao.numProtocolo.label', default: 'Num Protocolo')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'solicitacao.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'solicitacao.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'solicitacao.data.label', default: 'Data')}" />
					
						<th><g:message code="solicitacao.autorizador.label" default="Autorizador" /></th>
					
						<th><g:message code="solicitacao.operador.label" default="Operador" /></th>
					
					</tr>
				</thead>
				<tbody>
				<%-- Pendencia: Aqui eu tenho que filtrar somente as solicitacoes cujo autorizador é o que está logado!!--%>
				<g:each in="${solicitacaoInstanceList}" status="i" var="solicitacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:remoteLink class="show" action="show" update="page-body" id="${solicitacaoInstance.id}">${fieldValue(bean: solicitacaoInstance, field: "numProtocolo")}</g:remoteLink></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "tipo")}</td>
					
						<td><g:formatDate date="${solicitacaoInstance.data}" /></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "autorizador")}</td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "operador")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table></p>
			<div class="pagination">
				<g:paginate total="${solicitacaoInstanceCount ?: 0}" />
			</div>
		
	
	
	
	
	
	<div id="controller-list" role="navigation"></div>
</div>
</body>
</html>