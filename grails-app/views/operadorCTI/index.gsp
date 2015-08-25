<!DOCTYPE html>
<html>
<head>
	<%--Sem estilo - <meta name="layout" content="main"/>--%>
	<title>Sistema de solicitação de acesso à rede Wireless</title>
	
<style>
header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;	
}

</style>
   
</head>
<body>
<header>
<h1>Área Restrita a OPERADORES</h1> 
</header>
<p>
	Por favor, escolha uma opção:
</p>
<ul>
	<li><a href="Solicitacao">Cadastro de Solicitacao</a> </li>
	<li><a href="OperadorCTI/indexAntigo">Cadastro de operador (PENDENTE)</a> </li>
	PENDENCIA: Tem que pegar o usuario e a senha informados e automaticamente <br>
	tb fazer o cadastro em clientes, papelcliente e papel (autenticacao)
	<li><a href="UsuarioSolicitante">Cadastro de usuário</a> </li>
	<li><a href="UsuarioTemporario">Cadastro de usuário temporário</a> </li>
	<li><a href="Equipamento">Cadastro de equipamento</a> </li>
	<li><a href="Equipamento">Cadastro de autorizador</a> </li>
	PENDENCIA: Idem ao operador
	<li><a href="OutrasTarefas/autorizador">Verificar solicitacoes pendentes</a> </li>	
	<li><a href="j_spring_security_logout">Fazer logout</a></li>
	
</ul>

</body>
</html>