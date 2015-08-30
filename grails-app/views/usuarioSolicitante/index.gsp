
<%@ page import="goaccess.UsuarioSolicitante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioSolicitante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>
			</ul>
		</div>
		<div id="list-usuarioSolicitante" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'usuarioSolicitante.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'usuarioSolicitante.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'usuarioSolicitante.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="setor" title="${message(code: 'usuarioSolicitante.setor.label', default: 'Setor')}" />
					
						<g:sortableColumn property="celular" title="${message(code: 'usuarioSolicitante.celular.label', default: 'Celular')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'usuarioSolicitante.endereco.label', default: 'Endereco')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioSolicitanteInstanceList}" status="i" var="usuarioSolicitanteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioSolicitanteInstance.id}">${fieldValue(bean: usuarioSolicitanteInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "setor")}</td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "celular")}</td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "endereco")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioSolicitanteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
