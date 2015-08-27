<%@ page import="goaccess.OperadorCTI" %>



<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="operadorCTI.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${operadorCTIInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="operadorCTI.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${operadorCTIInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="operadorCTI.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${operadorCTIInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="operadorCTI.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${operadorCTIInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'hashSenha', 'error')} required">
	<label for="hashSenha">
		<g:message code="operadorCTI.hashSenha.label" default="Hash Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hashSenha" required="" value="${operadorCTIInstance?.hashSenha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="operadorCTI.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${operadorCTIInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="operadorCTI.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${operadorCTIInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'solicitacoes', 'error')} ">
	<label for="solicitacoes">
		<g:message code="operadorCTI.solicitacoes.label" default="Solicitacoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${operadorCTIInstance?.solicitacoes?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:remoteLink controller="solicitacao" action="create" params="['operadorCTI.id': operadorCTIInstance?.id]" update="page-body">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:remoteLink>

</li>
</ul>


</div>

