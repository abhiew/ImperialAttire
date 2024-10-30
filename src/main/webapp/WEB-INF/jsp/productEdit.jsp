<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/productEdit.css'/>">
</head>
<body>
    <div class="container">
        <h2>Edit Product</h2>
        <form action="<c:url value='/product/update'/>" method="post">
            <input type="hidden" name="id" value="${product.id}" />
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${product.name}" required />
            <br>
            <label for="description">Description:</label>
            <input type="text" id="description" name="description" value="${product.description}" required />
            <br>
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" value="${product.price}" required />
            <br>
            <label for="size">Size:</label>
            <input type="text" id="size" name="size" value="${product.size}" required />
            <br>
            <label for="imageUrl">Image URL:</label>
            <input type="text" id="imageUrl" name="imageUrl" value="${product.imageUrl}" required />
            <br>
            <input type="submit" value="Update Product" />
        </form>
        <br>
        <a href="<c:url value='/productList'/>">Back to Product List</a>
    </div>
</body>
</html>
