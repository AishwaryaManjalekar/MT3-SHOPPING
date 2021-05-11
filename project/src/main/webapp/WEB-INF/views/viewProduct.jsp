<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Product Details</title>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product:</p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.description}</p>
                    <p>Rs ${product.price}</p>
                    <p>${product.quantity }</p>

                    <br/>


                    <p>
                        <a href="<c:url value = "/viewAllProducts" />" class="btn btn-default">Back</a>
                    </p>

                </div>
            </div>
        </div>
</body>
</html>