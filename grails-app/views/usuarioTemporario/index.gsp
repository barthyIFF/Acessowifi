<%@ page import="goaccess.UsuarioTemporario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioTemporario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>
			</ul>
		</div>
		<div id="list-usuarioTemporario" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'usuarioTemporario.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'usuarioTemporario.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioTemporario.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="setor" title="${message(code: 'usuarioTemporario.setor.label', default: 'Setor')}" />
					
						<g:sortableColumn property="celular" title="${message(code: 'usuarioTemporario.celular.label', default: 'Celular')}" />
					
						<g:sortableColumn property="tempoAcesso" title="${message(code: 'usuarioTemporario.tempoAcesso.label', default: 'Tempo Acesso')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioTemporarioInstanceList}" status="i" var="usuarioTemporarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioTemporarioInstance.id}">${fieldValue(bean: usuarioTemporarioInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "setor")}</td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "celular")}</td>
					
						<td><g:formatDate date="${usuarioTemporarioInstance.tempoAcesso}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioTemporarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
