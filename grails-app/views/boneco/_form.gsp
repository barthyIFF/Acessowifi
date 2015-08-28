<%@ page import="goaccess.Boneco" %>



<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="boneco.username.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${bonecoInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="boneco.password.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${bonecoInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="boneco.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${bonecoInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="boneco.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${bonecoInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'bonecos', 'error')} ">
	<label for="bonecos">
		<g:message code="boneco.bonecos.label" default="Bonecos" />
		
	</label>
	<g:select name="bonecos" from="${goaccess.Boneco.list()}" multiple="multiple" optionKey="id" size="5" value="${bonecoInstance?.bonecos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="boneco.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${bonecoInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="boneco.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${bonecoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'papel', 'error')} required">
	<label for="papel">
		<g:message code="boneco.papel.label" default="Papel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="papel" name="papel.id" from="${goaccess.Papel.list()}" optionKey="id" required="" value="${bonecoInstance?.papel?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bonecoInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="boneco.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${bonecoInstance?.passwordExpired}" />

</div>

