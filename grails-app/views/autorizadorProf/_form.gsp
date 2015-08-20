<%@ page import="goaccess.AutorizadorProf" %>



<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="autorizadorProf.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${autorizadorProfInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="autorizadorProf.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${autorizadorProfInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="autorizadorProf.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${autorizadorProfInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="autorizadorProf.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${autorizadorProfInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="autorizadorProf.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${autorizadorProfInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'setorResponsavel', 'error')} required">
	<label for="setorResponsavel">
		<g:message code="autorizadorProf.setorResponsavel.label" default="Setor Responsavel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setorResponsavel" required="" value="${autorizadorProfInstance?.setorResponsavel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'numMemo', 'error')} required">
	<label for="numMemo">
		<g:message code="autorizadorProf.numMemo.label" default="Num Memo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numMemo" type="number" value="${autorizadorProfInstance.numMemo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'celularNum', 'error')} required">
	<label for="celularNum">
		<g:message code="autorizadorProf.celularNum.label" default="Celular Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celularNum" required="" value="${autorizadorProfInstance?.celularNum}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'hashSenha', 'error')} required">
	<label for="hashSenha">
		<g:message code="autorizadorProf.hashSenha.label" default="Hash Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hashSenha" required="" value="${autorizadorProfInstance?.hashSenha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'solicitacoes', 'error')} ">
	<label for="solicitacoes">
		<g:message code="autorizadorProf.solicitacoes.label" default="Solicitacoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${autorizadorProfInstance?.solicitacoes?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="solicitacao" action="create" params="['autorizadorProf.id': autorizadorProfInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:link>
</li>
</ul>


</div>

