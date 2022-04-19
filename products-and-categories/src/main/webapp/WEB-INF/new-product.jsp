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
<title>New Product Page</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script type="text/javascript" src="js/app.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class="mt-5 text-center">New Product</h1>
		<a class="m-t5" href="/">Home</a>
		<hr>
		<div class="row">
			<form:form action="/products/create" method="post"
				modelAttribute="newProduct">
				<div class="form-group pt-3">
					<form:label path="name">Name:</form:label>
					<form:errors path="name" class="text-danger" />
					<form:input type="text" path="name" class="form-control"
						style="width:500px;" />
				</div>
				<div class="form-group pt-3">
					<form:label path="description">Description:</form:label>
					<form:errors path="description" class="text-danger" />
					<form:textarea path="description"  rows="3" class="form-control"
						style="width:500px;" />
				</div>
				<div class="form-group pt-3">
					<form:label path="price">Price:</form:label>
					<form:errors path="price" class="text-danger" />
					<form:input type="number" path="price" class="form-control"
						style="width:500px;" />
				</div>
				<div>
					<input type="submit" class="btn btn-info mt-3" value="Submit" />
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
