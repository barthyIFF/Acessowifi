<%@ page import="goaccess.UsuarioTemporario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="usuarioTemporario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${usuarioTemporarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="usuarioTemporario.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${usuarioTemporarioInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioTemporario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioTemporarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'setor', 'error')} required">
	<label for="setor">
		<g:message code="usuarioTemporario.setor.label" default="Setor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setor" required="" value="${usuarioTemporarioInstance?.setor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="usuarioTemporario.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${usuarioTemporarioInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'tempoAcesso', 'error')} required">
	<label for="tempoAcesso">
		<g:message code="usuarioTemporario.tempoAcesso.label" default="Tempo Acesso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tempoAcesso" precision="day"  value="${usuarioTemporarioInstance?.tempoAcesso}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="usuarioTemporario.evento.label" default="Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="evento" required="" value="${usuarioTemporarioInstance?.evento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'setorEvento', 'error')} required">
	<label for="setorEvento">
		<g:message code="usuarioTemporario.setorEvento.label" default="Setor Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setorEvento" required="" value="${usuarioTemporarioInstance?.setorEvento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'numEvento', 'error')} required">
	<label for="numEvento">
		<g:message code="usuarioTemporario.numEvento.label" default="Num Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numEvento" type="number" value="${usuarioTemporarioInstance.numEvento}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="usuarioTemporario.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${usuarioTemporarioInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'hashSenha', 'error')} required">
	<label for="hashSenha">
		<g:message code="usuarioTemporario.hashSenha.label" default="Hash Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hashSenha" required="" value="${usuarioTemporarioInstance?.hashSenha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'solicitacao', 'error')} ">
	<label for="solicitacao">
		<g:message code="usuarioTemporario.solicitacao.label" default="Solicitacao" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioTemporarioInstance?.solicitacao?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:remoteLink controller="solicitacao" action="create" params="['operadorCTI.id': operadorCTIInstance?.id]" update="page-body">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:remoteLink>
</li>
</ul>


</div>

