<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
	<h1>Que souhaitez-vous faire avec ce client ?</h1>
	<ul>
		<li><a href="AssocierCompteCourant?idClient=${param['idClient']}">Associer un compte courant au client</a></li>
		<li><a href="AssocierCompteEpargne?idClient=${param['idClient']}">Associer un compte épargne au client</a></li>
		<li><a href="DecrireClient?idClient=${param['idClient']}">Décrire le client</a></li>
		<li><a href="ObtenirClient?idClient=${param['idClient']}">Modifier les paramètres du client (nom, prénom, adresse...)</a></li>
		<li><a href="SupprimerClient?idClient=${param['idClient']}">Supprimer ce client</a></li>
	</ul>
</body>
</html>