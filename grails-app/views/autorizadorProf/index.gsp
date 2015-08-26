
<%@ page import="goaccess.AutorizadorProf" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'autorizadorProf.label', default: 'AutorizadorProf')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-autorizadorProf" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:remoteLink controller="autorizadorProf" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]"/></g:remoteLink></li>
			</ul>
		</div>
		<div id="list-autorizadorProf" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'autorizadorProf.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'autorizadorProf.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="login" title="${message(code: 'autorizadorProf.login.label', default: 'Login')}" />
					
						<g:sortableColumn property="senha" title="${message(code: 'autorizadorProf.senha.label', default: 'Senha')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'autorizadorProf.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="setorResponsavel" title="${message(code: 'autorizadorProf.setorResponsavel.label', default: 'Setor Responsavel')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${autorizadorProfInstanceList}" status="i" var="autorizadorProfInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${autorizadorProfInstance.id}">${fieldValue(bean: autorizadorProfInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: autorizadorProfInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: autorizadorProfInstance, field: "login")}</td>
					
						<td>${fieldValue(bean: autorizadorProfInstance, field: "senha")}</td>
					
						<td>${fieldValue(bean: autorizadorProfInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: autorizadorProfInstance, field: "setorResponsavel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${autorizadorProfInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
