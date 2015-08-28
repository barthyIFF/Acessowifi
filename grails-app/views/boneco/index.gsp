
<%@ page import="goaccess.Boneco" %>
<!DOCTYPE html>
<html>
	<head>
		<%--<meta name="layout" content="main">--%>
		<g:set var="entityName" value="${message(code: 'boneco.label', default: 'Boneco')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-boneco" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-boneco" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" />
			<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'boneco.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'boneco.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'boneco.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'boneco.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'boneco.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'boneco.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bonecoInstanceList}" status="i" var="bonecoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bonecoInstance.id}">${fieldValue(bean: bonecoInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: bonecoInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${bonecoInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${bonecoInstance.accountLocked}" /></td>
					
						<td><g:formatBoolean boolean="${bonecoInstance.enabled}" /></td>
					
						<td>${fieldValue(bean: bonecoInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bonecoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
