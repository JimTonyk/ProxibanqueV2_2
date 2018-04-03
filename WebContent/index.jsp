<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Bienvenue, ${conseiller.prenom} ${conseiller.nom} (${conseiller.login})</h1>
	<ul>
		<li><a href="ListerClients">Gestion des clients</a></li>
		<li><a href="operations.html">Operations bancaires</a></li>
	</ul>
</body>
</html>