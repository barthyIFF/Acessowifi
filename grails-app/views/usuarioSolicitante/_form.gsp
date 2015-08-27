<%@ page import="goaccess.UsuarioSolicitante" %>



<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="usuarioSolicitante.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${usuarioSolicitanteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="usuarioSolicitante.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${usuarioSolicitanteInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioSolicitante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioSolicitanteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'setor', 'error')} required">
	<label for="setor">
		<g:message code="usuarioSolicitante.setor.label" default="Setor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setor" required="" value="${usuarioSolicitanteInstance?.setor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="usuarioSolicitante.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${usuarioSolicitanteInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="usuarioSolicitante.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${usuarioSolicitanteInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="usuarioSolicitante.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${usuarioSolicitanteInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="usuarioSolicitante.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${usuarioSolicitanteInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'hashSenha', 'error')} required">
	<label for="hashSenha">
		<g:message code="usuarioSolicitante.hashSenha.label" default="Hash Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hashSenha" required="" value="${usuarioSolicitanteInstance?.hashSenha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'solicitacao', 'error')} ">
	<label for="solicitacao">
		<g:message code="usuarioSolicitante.solicitacao.label" default="Solicitacao" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioSolicitanteInstance?.solicitacao?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:remoteLink controller="solicitacao" action="create" params="['usuarioSolicitante.id': usuarioSolicitanteInstance?.id]" update="page-body">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:remoteLink>

</li>
</ul>


</div>

