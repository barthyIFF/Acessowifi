
<%@ page import="goaccess.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-solicitacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="status" title="${message(code: 'solicitacao.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="protocolo" title="${message(code: 'solicitacao.protocolo.label', default: 'Protocolo')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'solicitacao.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'solicitacao.data.label', default: 'Data')}" />
					
						<th><g:message code="solicitacao.autorizador.label" default="Autorizador" /></th>
					
						<th><g:message code="solicitacao.operador.label" default="Operador" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${solicitacaoInstanceList}" status="i" var="solicitacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${solicitacaoInstance.id}">${fieldValue(bean: solicitacaoInstance, field: "status")}</g:link></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "protocolo")}</td>
					
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
