
<%@ page import="goaccess.OperadorCTI" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'operadorCTI.label', default: 'OperadorCTI')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-operadorCTI" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-operadorCTI" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list operadorCTI">
			
				<g:if test="${operadorCTIInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="operadorCTI.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${operadorCTIInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="operadorCTI.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${operadorCTIInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="operadorCTI.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${operadorCTIInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="operadorCTI.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${operadorCTIInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.hashSenha}">
				<li class="fieldcontain">
					<span id="hashSenha-label" class="property-label"><g:message code="operadorCTI.hashSenha.label" default="Hash Senha" /></span>
					
						<span class="property-value" aria-labelledby="hashSenha-label"><g:fieldValue bean="${operadorCTIInstance}" field="hashSenha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="operadorCTI.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${operadorCTIInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="operadorCTI.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${operadorCTIInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.solicitacoes}">
				<li class="fieldcontain">
					<span id="solicitacoes-label" class="property-label"><g:message code="operadorCTI.solicitacoes.label" default="Solicitacoes" /></span>
					
						<g:each in="${operadorCTIInstance.solicitacoes}" var="s">
						<span class="property-value" aria-labelledby="solicitacoes-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:operadorCTIInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${operadorCTIInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
