<%@ page import="goaccess.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitação')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		</div>
		<div class="nav" role="navigation">
			<ul>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="list-solicitacao" class="content scaffold-list" role="main">
			<br><h1>Sr. ${sec.username()}, as solicitações abaixo estão em seu nome:</h1><br>
			Username logado = ${sec.loggedInUserInfo(field:'username')}<br>
			${sec.username()}<br>
			
			
			<%--Somente aguardando aprovacao --%>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<g:if test="${sol.status == 'Aguardando Aprovacao'}">
    				<p>${i+1}. ${sol.numProtocolo}; Autorizador = ${sol.autorizador}; ${sol.status} 
	    			<g:remoteLink class="mudaStatus" action="mudaStatus" update="page-body" id="${sol.id}">APROVAR</g:remoteLink> 
    				<g:remoteLink class="show" action="show" update="page-body" id="${sol.id}">REPROVAR</g:remoteLink></p>
				</g:if>
			</g:each><br>

			<hr>
			
			<%--Nao somente aguardando aprovacao, todas em seu nome --%>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">		
    				<p>${i+1}. ${sol.numProtocolo}; Autorizador = ${sol.autorizador}; ${sol.status};
    				<g:remoteLink class="mudaStatus" action="mudaStatus" update="page-body" id="${sol.id}">APROVAR</g:remoteLink></p> 
    				<g:javascript library="jquery" /> 
    		  						
			</g:each><br>
			
			
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
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
			</table>
			<div class="pagination">
				<g:paginate total="${solicitacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
