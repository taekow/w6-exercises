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
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script type="text/javascript" src="js/app.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class="text-center mt-5">Home Page</h1>
		<a class="m-t5" href="/products/new">New Product</a><br>
		<a href="categories/new">New Category</a>
		<hr>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th scope="col">Products</th>
					<th scope="col">Categories</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<ul>
							<c:forEach var="product" items="${products}">
								<li><a href="products/${product.id}"><c:out value="${product.name}"></c:out></a>
								</li>
							</c:forEach>
						</ul>
					</td>
					<td>
						<ul>
							<c:forEach var="category" items="${categories}">
								<li><a href="categories/${category.id}"><c:out value="${category.name}"></c:out></a>
								</li>
							</c:forEach>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>