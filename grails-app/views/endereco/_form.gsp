<%@ page import="goaccess.Endereco" %>



<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="endereco.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" required="" value="${enderecoInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="endereco.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${enderecoInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="endereco.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${enderecoInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="endereco.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${enderecoInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'localidade', 'error')} required">
	<label for="localidade">
		<g:message code="endereco.localidade.label" default="Localidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidade" required="" value="${enderecoInstance?.localidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'uf', 'error')} required">
	<label for="uf">
		<g:message code="endereco.uf.label" default="Uf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uf" required="" value="${enderecoInstance?.uf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'usuarios', 'error')} ">
	<label for="usuarios">
		<g:message code="endereco.usuarios.label" default="Usuarios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${enderecoInstance?.usuarios?}" var="u">
    <li><g:link controller="usuarioSolicitante" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuarioSolicitante" action="create" params="['endereco.id': enderecoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante')])}</g:link>
</li>
</ul>


</div>

