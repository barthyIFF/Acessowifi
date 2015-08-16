
<%@ page import="goaccess.OperadorCTI" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'operadorCTI.label', default: 'OperadorCTI')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-operadorCTI" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-operadorCTI" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'operadorCTI.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'operadorCTI.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="login" title="${message(code: 'operadorCTI.login.label', default: 'Login')}" />
					
						<g:sortableColumn property="senha" title="${message(code: 'operadorCTI.senha.label', default: 'Senha')}" />
					
						<g:sortableColumn property="hashSenha" title="${message(code: 'operadorCTI.hashSenha.label', default: 'Hash Senha')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'operadorCTI.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${operadorCTIInstanceList}" status="i" var="operadorCTIInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${operadorCTIInstance.id}">${fieldValue(bean: operadorCTIInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "login")}</td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "senha")}</td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "hashSenha")}</td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${operadorCTIInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
