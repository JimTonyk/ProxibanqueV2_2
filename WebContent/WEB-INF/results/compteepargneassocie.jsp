<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proxibanque - compte associ�</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
	<div id="header">
		<img alt="" src="banner.jpeg" />
		<h3>Compte �pargne associ� !</h3>
	</div>
	<div id="content">
		<div class="column1">
			<img alt="" src="associer-compte.jpg" />
		</div>
		<div class="column2" align="center">
			<p>R�sum� de cr�ation du compte :</p>
			<form>
				<fieldset>
					<legend>
						<b>Compte courant</b>
					</legend>
					<table>
						<tr>
							<td>Num�ro de compte :</td>
							<td>${compteEpargne.numeroCompte}</td>
						</tr>
						<tr>
							<td>Solde :</td>
							<td>${compteEpargne.solde}</td>
						</tr>
						<tr>
							<td>Date d'ouverture :</td>
							<td>${compteEpargne.dateOuverture}</td>
						</tr>
					</table>
				</fieldset>
			</form>
			<a href="gestionclient.jsp?idClient=${param['idClient']}">Retour au menu pr�c�dent</a><br>
			<a href="ListerClients">Retour � la gestion des clients</a>
		</div>
	</div>
	<div id="footer">&copy;Copyright ProxiBanque 2018</div>
</body>
</html>