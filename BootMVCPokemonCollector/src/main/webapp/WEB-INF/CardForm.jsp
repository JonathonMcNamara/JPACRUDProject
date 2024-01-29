<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<c:if test="${empty card}">
<title>Add New Card</title>
</c:if>
<c:if test="${not empty card}">
<title>Update Card</title>
</c:if>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: #f4f4f4;
}
</style>
</head>
<body>
	<c:if test="${empty card}">
		<div class="container mt-5">
			<form action="addCard.do" method="POST">
				<h2 class="text-center mb-4">Add New Card</h2>

				<div class="form-group">
					<label for="name">Name:</label> <input type="text" id="name"
						name="name" class="form-control" required>
				</div>

				<div class="form-group">
					<label for="carset">Card Set:</label> <input id="cardset"
						name="cardset" class="form-control" required></input>
				</div>

				<div class="form-group">
					<label for="cardtype">Card Type:</label> <input type="text"
						id="cardtype" name="cardtype" class="form-control" required>
				</div>

				<div class="form-group">
					<label for="cardnumber">Card Number:</label> <input type="text"
						id="cardnumber" name="cardnumber" class="form-control" required>
				</div>

				<div class="form-group">
					<label for="grade">Grade:</label> <input type="text" id="grade"
						name="grade" class="form-control" required>
				</div>

				<div class="form-group">
					<label for="price">Price:</label> <input type="text" id="price"
						name="price" class="form-control" required>
				</div>


				<button type="submit" class="btn btn-success btn-block">Add
					Card</button>
				<br>
				<!-- Link to return to the home page -->
				<a href="" class="btn btn-primary">Return to Home Page</a> <br>
				<br>
			</form>
		</div>
	</c:if>

	<c:if test="${not empty card}">
		<div class="container mt-5">
			<form action="saveCard.do" method="POST">
				<h2 class="text-center mb-4">Update Card</h2>

				<div class="form-group">
					<label for="name">Name:</label> <input type="text" id="name"
						value="${card.name}" name="name" class="form-control" required>
				</div>

				<div class="form-group">
					<label for="carset">Card Set:</label> <input id="cardset"
						value="${card.cardset}" name="cardset" class="form-control"
						required></input>
				</div>

				<div class="form-group">
					<label for="cardtype">Card Type:</label> <input type="text"
						value="${card.cardtype}" id="cardtype" name="cardtype"
						class="form-control" required>
				</div>

				<div class="form-group">
					<label for="cardnumber">Card Number:</label> <input type="text"
						value="${card.cardnumber}" id="cardnumber" name="cardnumber"
						class="form-control" required>
				</div>

				<div class="form-group">
					<label for="grade">Grade:</label> <input type="text" id="grade"
						value="${card.grade}" name="grade" class="form-control" required>
				</div>

				<div class="form-group">
					<label for="price">Price:</label> <input type="text" id="price"
						value="${card.price}" name="price" class="form-control" required>
				</div>


				<button name="cardId" value="${card.id}" type="submit" class="btn btn-success btn-block">Update
					Card</button>
				<br>
				<!-- Link to return to the home page -->
				<a href="home.do" class="btn btn-primary">Return to Home Page</a> <br>
				<br>
			</form>
		</div>
	</c:if>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>