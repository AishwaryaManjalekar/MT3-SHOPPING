<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<title>HomePage</title>
</head>
<body>

	<h1>Welcome to Spring with Hibernate Demo using DAO and Service</h1>
	<h3>
		<a href="about">AboutUS</a><br>
		<c:if test="${pageContext.request.userPrincipal.name == null}">
			<a href="login">Login</a>
			<br>
		</c:if>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value="/perform_logout" />">Logout</a></li>

			<security:authorize access="hasRole('ROLE_ADMIN')">
				<br>
				<a href="admin/addProduct">Add New Product</a>
				<br>
				<br>
				<a href="admin/updateProduct">Update Product</a>
				<br>
			</security:authorize>
			<security:authorize access="hasRole('ROLE_USER')">
				<br>
				<a href="user/viewAllProducts">View All Products</a>
			</security:authorize>
		</c:if>
	</h3>
</body>
</html>
