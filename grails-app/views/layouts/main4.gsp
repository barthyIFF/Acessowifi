<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Acessowifi"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

		<link rel="stylesheet" href="css/bootstrap.css" media="screen">
		<link rel="stylesheet" href="css/styles.css" media="screen">	
	
					
<style type="text/css" media="screen">
	#menusuperior {
		background-color: #eee;
		float: right;
		text-align:right;
	}
	#menu {
		background-color: #eee;
		border: .2em solid #fff;
		margin: 2em 2em 1em;
		padding: 1em;
		width: 12em;
		float: left;
		-moz-box-shadow: 0px 0px 1.25em #ccc;
		-webkit-box-shadow: 0px 0px 1.25em #ccc;
		box-shadow: 0px 0px 1.25em #ccc;
		-moz-border-radius: 0.6em;
		-webkit-border-radius: 0.6em;
		border-radius: 0.6em;
	}
#grailsLogo {
	background-color: #000000;
	padding:10px;
	margin:0;
}
.footer {
	background: #000;
	color: #000;
	clear: both;
	font-size: 0.8em;
	margin-top: 1.5em;
	padding: 1em;
	min-height: 1em;
}	
#page-body {
	
}
	#cabecalho{
	}
	#conteudo{
	margin:10px;
	}
	#rodape{
	}
	#status-login{
	backgroud:gray;
	padding:20px;
	text-align: right;
	}			
</style>
		
<!-- <asset:stylesheet src="application.css"/> -->
<!-- <asset:javascript src="application.js"/> -->
		
<g:layoutHead/>
</head>
<body class="page">	
	<div id="cabecalho">
		<div id="grailsLogo">
		
			<img src="images/awifi_logo.png" alt="Awifi"/>
		</div>	
		<div id="status-login">
				<div class="btn-group">
					<button class="btn btn-success"> ${sec.loggedInUserInfo(field:'username')}</button>
					<button data-toggle="dropdown" class="btn btn-success dropdown-toggle"><span class="caret"></span></button>
					<ul class="dropdown-menu">
						<li><a href="j_spring_security_logout">Logout</a></li>
					</ul>
				</div>
		</div><!-- status-login -->
	</div> <!-- cabecalho -->

	<g:layoutBody/>
	<div class=footer>
	</div>
</body>
</html>
