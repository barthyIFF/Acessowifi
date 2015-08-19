<h3>Subtrai</h3>
<g:formRemote name="subForm" url="[controller:'status', action:'diferenca']" update="subtracao">
    <label for="a">Primeiro Número</label><g:textField name="a"/><br/>
    <label for="b">Segundo Número</label><g:textField name="b"/><br/>
    <g:submitButton name="Calcular"/>
</g:formRemote>