<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Status</title>
        <g:javascript library="jquery"/>
    </head>
    <body>
    <body>
<header>
<h1>Sistema de solicitação de acesso à rede Wireless</h1> 
</header>
<p>
	Por favor informe o seu perfil abaixo.
</p>
<ul>

	<li>Novo Usuário (Solicitação de acesso)</li>
	<g:remoteLink controller="outrasTarefas" action="operador" update="subtracao">Operador Ajax</g:remoteLink>
	<div id="subtracao">
        
    </div>
	
	 	<li><a href="../OutrasTarefas/autorizador">Autorizador de solicitações</a> </li>
	<li><a href="../OutrasTarefas/operador">Operador do sistema</a> </li>
</ul>
<br>
<br>
<br>
<br>
</p>
	Fazer <a href="j_spring_security_logout">logout</a>
<p>
    <br><input type="button" value="Voltar" onClick="history.go(-1)"> 
    </body>
</html>
