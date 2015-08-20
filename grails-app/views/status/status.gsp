<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Status</title>
        <g:javascript library="jquery"/>
    </head>
    <body>
    <p><h2>Bem vindo ao sistema de Status de Atendimento</h2></p>
    <br>
    <p>Consulte o Status do seu cadastro:</p>
    <br>
    <div id="subtracao">
        <g:render template="/status/statusForm"/>
    </div>
    <br><input type="button" value="Voltar" onClick="history.go(-1)"> 
    </body>
</html>