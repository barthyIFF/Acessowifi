
<%@ page import="goaccess.UsuarioTemporario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioTemporario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioTemporario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioTemporario">
			
				<g:if test="${usuarioTemporarioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="usuarioTemporario.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="usuarioTemporario.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioTemporario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.setor}">
				<li class="fieldcontain">
					<span id="setor-label" class="property-label"><g:message code="usuarioTemporario.setor.label" default="Setor" /></span>
					
						<span class="property-value" aria-labelledby="setor-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="setor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="usuarioTemporario.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.tempoAcesso}">
				<li class="fieldcontain">
					<span id="tempoAcesso-label" class="property-label"><g:message code="usuarioTemporario.tempoAcesso.label" default="Tempo Acesso" /></span>
					
						<span class="property-value" aria-labelledby="tempoAcesso-label"><g:formatDate date="${usuarioTemporarioInstance?.tempoAcesso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="usuarioTemporario.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="evento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.setorEvento}">
				<li class="fieldcontain">
					<span id="setorEvento-label" class="property-label"><g:message code="usuarioTemporario.setorEvento.label" default="Setor Evento" /></span>
					
						<span class="property-value" aria-labelledby="setorEvento-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="setorEvento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.numEvento}">
				<li class="fieldcontain">
					<span id="numEvento-label" class="property-label"><g:message code="usuarioTemporario.numEvento.label" default="Num Evento" /></span>
					
						<span class="property-value" aria-labelledby="numEvento-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="numEvento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="usuarioTemporario.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.hashSenha}">
				<li class="fieldcontain">
					<span id="hashSenha-label" class="property-label"><g:message code="usuarioTemporario.hashSenha.label" default="Hash Senha" /></span>
					
						<span class="property-value" aria-labelledby="hashSenha-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="hashSenha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.solicitacao}">
				<li class="fieldcontain">
					<span id="solicitacao-label" class="property-label"><g:message code="usuarioTemporario.solicitacao.label" default="Solicitacao" /></span>
					
						<g:each in="${usuarioTemporarioInstance.solicitacao}" var="s">
						<span class="property-value" aria-labelledby="solicitacao-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioTemporarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioTemporarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
