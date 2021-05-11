<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Product</title>
</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>All Products</h1>

				<p class="lead">Checkout all the products available now!</p>
			</div>
			<p>
				<a href="<c:url value = "/home" />" class="btn btn-default">Home Page</a>
			</p>
			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Product Name</th>
						<th>Price</th>
						<th>Additional Tasks</th>
					</tr>
				</thead>
				<c:forEach items="${products}" var="product">
					<tr>
						<td>${product.productName}</td>
						<td>Rs ${product.price}</td>
						<td><a
							href="<spring:url value="/viewProduct/${product.productID}" />">View
								Detail</a> &nbsp&nbsp&nbsp&nbsp
						<td><a
							href="<spring:url value="/updateProduct/${product.productID}" />">Update Product</a>&nbsp&nbsp&nbsp&nbsp
						<td><a
							href="<spring:url value="/deleteProduct/${product.productID}" />">Delete Product</a></td>
					</tr>
				</c:forEach>
			</table>
</body>
</html>