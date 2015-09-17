<%@ page import="goaccess.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitação')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		</div>
		<div class="nav" role="navigation">
			<ul>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="list-solicitacao" class="content scaffold-list" role="main">
			<h1> Sr. ${sec.username()}, as solicitações abaixo estão em seu nome.</h1><br>
			<%--Username logado = ${sec.loggedInUserInfo(field:'username')}<br>
			${sec.username()}<br>--%>
			<br>
			<br>
			
			<%--Somente aguardando aprovacao --%>
			<p><b><u>Solicitações aguardando aprovação:</u></b></p>
			<br>			
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<g:if test="${sol.status == 'AGUARDANDO APROVACAO de '+sol.autorizador}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario} -
	    			<g:remoteLink class="mudaStatus" action="mudaStatus" update="page-body" id="${sol.id}">APROVAR</g:remoteLink> 
    				<g:remoteLink class="show" action="show" update="page-body" id="${sol.id}">REPROVAR</g:remoteLink></p>
				</g:if>				
			</g:each>			
			<br>

			
			
			<%--Aprovadas --%>
			<p><b><u>Solicitações que foram APROVADAS:</u></b></p>
			<br>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<g:if test="${sol.status == 'Solicitacao APROVADA por '+sol.autorizador+'. Aguardando cadastro pelo operador: '+sol.operador}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario}
				</g:if>
			</g:each>
			<br>
			
			<%--Reprovadas --%>
			<p><b><u>Solicitações que foram REPROVADAS:</u></b></p>
			<br>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<%--Claudio - 17/09/15: O Operador tb pode reprovar, e nesse caso o nome dele fica gravado para o Autorizador.
				Depois que o Autorizador aprovar o operador pode reprovar devido a um erro técnico como o numero incorreto do IP, por exemplo.--%>
				<g:if test="${sol.status == 'Solicitacao REPROVADA por: '+sol.autorizador || sol.status == 'Solicitacao REPROVADA por: '+sol.operador}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario} - ${sol.status}
				</g:if>
			</g:each><br>

			<%--Finalizadas: acesso garantido. --%>
			<p><b><u>Solicitações FINALIZADAS (acesso à rede garantido):</u></b></p>
			<br>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<g:if test="${sol.status == 'Solicitacao FINALIZADA. Acesso a rede garantido.'}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario}
				</g:if>
			</g:each><br>
			
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="numProtocolo" title="${message(code: 'solicitacao.numProtocolo.label', default: 'Num Protocolo')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'solicitacao.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'solicitacao.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'solicitacao.data.label', default: 'Data')}" />
					
						<th><g:message code="solicitacao.autorizador.label" default="Autorizador" /></th>
					
						<th><g:message code="solicitacao.operador.label" default="Operador" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${solicitacaoInstanceList}" status="i" var="solicitacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:remoteLink class="show" action="show" update="page-body" id="${solicitacaoInstance.id}">${fieldValue(bean: solicitacaoInstance, field: "numProtocolo")}</g:remoteLink></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "tipo")}</td>
					
						<td><g:formatDate date="${solicitacaoInstance.data}" /></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "autorizador")}</td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "operador")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${solicitacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
