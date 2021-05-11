<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Product</title>
</head>
<body>
 <form:form action="${pageContext.request.contextPath}/addProduct" method="post" modelAttribute="product">
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="description" id="description" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="price" cssStyle="color:#ff0000;" />
                <form:input path="price" id="price" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label>
                <form:errors path="quantity" cssStyle="color:#ff0000;" />
                <form:input path="quantity" id="unitInStock" class="form-Control" />
            </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/home" />" class="btn btn-default">Cancel</a>

    </form:form>
</body>
</html>