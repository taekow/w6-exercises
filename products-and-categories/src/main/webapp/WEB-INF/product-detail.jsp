<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Product Detail Page</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script type="text/javascript" src="js/app.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class="mt-5 text-center">${product.name}</h1>
		<a class="m-t5" href="/">Home</a>
		<hr>
		<div class="row">
			<h2>Categories:</h2>
			<c:forEach var="category" items="${categories}">
				<li>










<c:out value="${category.name}"></c:out></a></li>
			</c:forEach>
		</div>
		<div class="row">
			<h2>Add Category:</h2>
			<c:forEach var="new" items="${products}">
				<li><a href="products/${product.id}"><c:out value="${product.name}"></c:out></a></li>
			</c:forEach>
		</div>
	</div>
</body>
</html>
