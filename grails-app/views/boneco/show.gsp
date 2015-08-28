
<%@ page import="goaccess.Boneco" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'boneco.label', default: 'Boneco')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-boneco" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-boneco" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list boneco">
			
				<g:if test="${bonecoInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="boneco.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${bonecoInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="boneco.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${bonecoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="boneco.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${bonecoInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="boneco.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${bonecoInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.bonecos}">
				<li class="fieldcontain">
					<span id="bonecos-label" class="property-label"><g:message code="boneco.bonecos.label" default="Bonecos" /></span>
					
						<g:each in="${bonecoInstance.bonecos}" var="b">
						<span class="property-value" aria-labelledby="bonecos-label"><g:link controller="boneco" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="boneco.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${bonecoInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="boneco.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${bonecoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.papel}">
				<li class="fieldcontain">
					<span id="papel-label" class="property-label"><g:message code="boneco.papel.label" default="Papel" /></span>
					
						<span class="property-value" aria-labelledby="papel-label"><g:link controller="papel" action="show" id="${bonecoInstance?.papel?.id}">${bonecoInstance?.papel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bonecoInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="boneco.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${bonecoInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bonecoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bonecoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
