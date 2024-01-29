<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Getting My cards</title>
</head>
<body>
	<div>
		<form action="getCard.do" method="GET">
			Film ID: <input type="text" name="cardId" /> <input type="submit"
				value="Show Pokemon" />
		</form>
	</div>
	<div>
		<a href="EnterAPokemonCard">Enter A Pokemon Card</a>
	</div>
	
	

</body>
</html>