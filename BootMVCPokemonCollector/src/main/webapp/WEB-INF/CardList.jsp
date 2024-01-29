<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Collecton</title>
</head>
<body>

	<c:forEach var="card" items="${cards}">
		<h3>${card.name}</h3>
		<ul>
			<li>${card.cardset}</li>
			<li>${card.cardtype}</li>
			<li>${card.cardnumber}</li>
			<li>${card.grade}</li>
			<li>$${card.price}</li>
		</ul>
		<form action="updateCard.do" method="POST">
			<input type="hidden" name="cardId" value="${card.id}" /><input
				type="submit" value="Update this card" />
		</form>
	</c:forEach>
	<a href="home.do" class="btn btn-primary">Return to Home Page</a>
</body>
</html>