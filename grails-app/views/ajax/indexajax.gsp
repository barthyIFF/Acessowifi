<!DOCTYPE html>
<html>
<head>
<title>GoGrailsAjax</title>
<g:javascript library="jquery"/>
<style>
header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;	 
}
nav {
    line-height:30px;
    background-color:#eeeeee;
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
section {
    width:350px;
    float:left;
    padding:10px;	 	 
}
footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
    padding:5px;	 	 
}
</style>
</head>
<body>

<header>
<h1>GoGrails AJAX</h1>
</header>

<nav>
<a href="../">Home</a><br>
menu2<br>
menu3<br>
</nav>

<section>
<h1>Consulta</h1>
<p>
Essa é uma aplicação que usa Ajax
</p>
<p>
<g:remoteField controller="ajax" action="atualiza" 
update="div"/>
</p>
</section>

<footer>
Copyright © gograils
</footer>

</body>
</html>
