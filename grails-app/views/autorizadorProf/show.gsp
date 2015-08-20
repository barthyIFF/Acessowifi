
<%@ page import="goaccess.AutorizadorProf" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'autorizadorProf.label', default: 'AutorizadorProf')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-autorizadorProf" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-autorizadorProf" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list autorizadorProf">
			
				<g:if test="${autorizadorProfInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="autorizadorProf.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${autorizadorProfInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="autorizadorProf.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${autorizadorProfInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="autorizadorProf.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${autorizadorProfInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="autorizadorProf.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${autorizadorProfInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="autorizadorProf.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${autorizadorProfInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.setorResponsavel}">
				<li class="fieldcontain">
					<span id="setorResponsavel-label" class="property-label"><g:message code="autorizadorProf.setorResponsavel.label" default="Setor Responsavel" /></span>
					
						<span class="property-value" aria-labelledby="setorResponsavel-label"><g:fieldValue bean="${autorizadorProfInstance}" field="setorResponsavel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.numMemo}">
				<li class="fieldcontain">
					<span id="numMemo-label" class="property-label"><g:message code="autorizadorProf.numMemo.label" default="Num Memo" /></span>
					
						<span class="property-value" aria-labelledby="numMemo-label"><g:fieldValue bean="${autorizadorProfInstance}" field="numMemo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.celularNum}">
				<li class="fieldcontain">
					<span id="celularNum-label" class="property-label"><g:message code="autorizadorProf.celularNum.label" default="Celular Num" /></span>
					
						<span class="property-value" aria-labelledby="celularNum-label"><g:fieldValue bean="${autorizadorProfInstance}" field="celularNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.hashSenha}">
				<li class="fieldcontain">
					<span id="hashSenha-label" class="property-label"><g:message code="autorizadorProf.hashSenha.label" default="Hash Senha" /></span>
					
						<span class="property-value" aria-labelledby="hashSenha-label"><g:fieldValue bean="${autorizadorProfInstance}" field="hashSenha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.solicitacoes}">
				<li class="fieldcontain">
					<span id="solicitacoes-label" class="property-label"><g:message code="autorizadorProf.solicitacoes.label" default="Solicitacoes" /></span>
					
						<g:each in="${autorizadorProfInstance.solicitacoes}" var="s">
						<span class="property-value" aria-labelledby="solicitacoes-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:autorizadorProfInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${autorizadorProfInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
