<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="FaireVirementDo" method="post">

		<fieldset>
			<legend>Choisissez un client source</legend>
			<select name="idClientSrc">
				<c:forEach items="${allClients}" var="currentClient">
					<option value="${currentClient.idClient}">
						${currentClient.idClient}
						${currentClient.prenom}
						${currentClient.nom}</option>
				</c:forEach>
			</select>
		</fieldset>

		<fieldset>
			<legend>Choisissez un client source</legend>
			<select name="idClientDest">
				<c:forEach items="${allClients}" var="currentClient">
					<option value="${currentClient.idClient}">
						${currentClient.idClient}
						${currentClient.prenom}
						${currentClient.nom}</option>
				</c:forEach>
			</select>
		</fieldset>
		
		<fieldset>
		<legend>Indiquez un montant</legend>
			Montant (euros): <input type="text" name="montantVirement" placeholder="Montant (euros)"><br>
			<input type="submit" value="Envoyer"> <input type="reset" value="Reset">
		</fieldset>

	</form>
</body>
</html>