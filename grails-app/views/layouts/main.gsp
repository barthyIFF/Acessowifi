<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/styles.css" rel="stylesheet">
		
			<style type="text/css" media="screen">
			#grailsLogo {
				background-color: #000000;
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
			
			#menusuperior {
				background-color: #eee;
				float: right;
				text-align:right;
	
				
				}
			
			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}
			
			#page-body {
				margin: 2em 1em 1.25em 18em;
			}
			@media screen and (max-width: 480px) {
				#menusuperior {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
				
				h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}
			}
						
		</style>
		
		<!-- <asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/> -->
		
		<g:layoutHead/>
	</head>
	<body class="page">	
	<div id="grailsLogo" role="banner">
		<a class="home" href="${createLink(uri: '/')}">
		<img src="images/awifi_logo.png" alt="Awifi"/>	
	</div>
		<%-- Retirando menu superior --%>
 <!-- 
		<div id="menusuperior" role="main" class="article">
		
		</div>
	-->
<div id="menusuperior0">
<table class="table table-bordered table-striped">
<tr>
<th></th>
</tr>
</table>
</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
