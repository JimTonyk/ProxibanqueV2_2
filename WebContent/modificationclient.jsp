<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ModifierClient?idClient=${client.idClient}" method="post">
		<fieldset>
			<legend>Infos client</legend>
			Nom : <input type="text" name="nom" value="${client.nom}"><br>
			Prénom : <input type="text" name="prenom" value="${client.prenom}"><br>
			Adresse : <input type="text" name="adresse" value="${client.adresse}"><br>
			Code Postal : <input type="text" name="codePostal" value="${client.codePostal}"><br>
			Ville : <input type="text" name="ville" value="${client.ville}"><br>
			Téléphone :<input type="text" name="telephone" value="${client.telephone}"><br>
			<input type="submit" value="Envoyer"> <input type="reset" value="Reset">
		</fieldset>
	</form>
</body>
</html>