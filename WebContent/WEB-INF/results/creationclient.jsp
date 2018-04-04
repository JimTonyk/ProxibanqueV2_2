<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proxibanque : Client ajouté à l'agence</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
	<div id="header">
		<img alt="" src="banner.jpeg" />
		<h3>Le client ${client.prenom} ${client.nom} a été ajouté à
			Proxibanque</h3>
		<p />
	</div>
	<div id="content">
		<div class="column1">
			<img alt="" src="valider.jpg" />
		</div>
		<div class="column2">
			<form>
				<fieldset>
					<legend>
						<b>Récapitulatif du client</b>
					</legend>
					<table>
						<tr>
							<td>Nom :</td>
							<td>${client.nom}</td>
						</tr>
						<tr>
							<td>Prénom :</td>
							<td>${client.prenom}</td>
						</tr>
						<tr>
							<td>Adresse :</td>
							<td>${client.adresse}</td>
						</tr>
						<tr>
							<td>Code Postal :</td>
							<td>${client.codePostal}</td>
						</tr>
						<tr>
							<td>Ville :</td>
							<td>${client.ville}</td>
						</tr>
						<tr>
							<td>Téléphone :</td>
							<td>${client.telephone}
							<td>
						</tr>
					</table>
				</fieldset>
			</form>
		<a href="creerclient.html">Retour au menu "Création d'un client"</a>
		</div>
	</div>
	<div id="footer">&copy;Copyright Proxibanque 2018</div>
</body>
</html>