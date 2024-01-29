<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Card Details:</title>
</head>
<body>
	<c:if test="${not empty card}">
		<div>
			<h2>${card.name}</h2>
			<ul>
				<li>${card.cardset}</li>
				<li>${card.cardtype}</li>
				<li>${card.cardnumber}</li>
				<li>${card.grade}</li>
				<li>$${card.price}</li>
			</ul>
			<div>
				<form action="updateCard.do" method="POST">
					<input type="hidden" name="cardId" value="${card.id}" /><input
						type="submit" value="Update this card" />
				</form>
			</div>
			<br>
			<div>
				<a href="home.do" class="btn btn-primary">Return to Home Page</a>
			</div>
			<br>
			<div>
				<form action="deleteCard.do" method="POST">
					<input type="hidden" name="cardId" value="${card.id}" /> <input
						type="submit" value="Delete this card" />
				</form>
			</div>
		</div>
	</c:if>
	<c:if test="${empty card}">
		<h1>No Card Found By That Id</h1>
		<a href="home.do" class="btn btn-primary">Return to Home Page</a>
	</c:if>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>