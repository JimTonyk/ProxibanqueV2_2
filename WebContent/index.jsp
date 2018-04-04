<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proxibanque : menu conseiller</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<body>
	<div id="header">
		<img alt="" src="banner.jpeg" />
		<h1>Bienvenue chez Proxibanque !</h1>
		<div id="nav">
			<ul>
				<li><a href="ListerClients">Gestion des clients</a></li>
				<li><a href="operations.html">Operations bancaires</a></li>
			</ul>
		</div>
	</div>
	<div id="content">
	<h1>Bienvenue, ${conseillerSession.prenom} ${conseillerSession.nom}
		(${conseillerSession.login})</h1>
	<p>Voici les infos du jour concernant Proxibanque :</p>
	<h3>Toute l'équipe Proxibanque vous souhaite une bonne journée !</h3>
	</div>
	<div id="footer">&copy;Copyright Proxibanque 2018</div>
</body>
</html>