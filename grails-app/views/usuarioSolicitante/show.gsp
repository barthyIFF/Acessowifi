
<%@ page import="goaccess.UsuarioSolicitante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioSolicitante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioSolicitante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioSolicitante">
			
				<g:if test="${usuarioSolicitanteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="usuarioSolicitante.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="usuarioSolicitante.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioSolicitante.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.setor}">
				<li class="fieldcontain">
					<span id="setor-label" class="property-label"><g:message code="usuarioSolicitante.setor.label" default="Setor" /></span>
					
						<span class="property-value" aria-labelledby="setor-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="setor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="usuarioSolicitante.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="usuarioSolicitante.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="usuarioSolicitante.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="usuarioSolicitante.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${usuarioSolicitanteInstance?.endereco?.id}">${usuarioSolicitanteInstance?.endereco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.hashSenha}">
				<li class="fieldcontain">
					<span id="hashSenha-label" class="property-label"><g:message code="usuarioSolicitante.hashSenha.label" default="Hash Senha" /></span>
					
						<span class="property-value" aria-labelledby="hashSenha-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="hashSenha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.solicitacao}">
				<li class="fieldcontain">
					<span id="solicitacao-label" class="property-label"><g:message code="usuarioSolicitante.solicitacao.label" default="Solicitacao" /></span>
					
						<g:each in="${usuarioSolicitanteInstance.solicitacao}" var="s">
						<span class="property-value" aria-labelledby="solicitacao-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioSolicitanteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioSolicitanteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
