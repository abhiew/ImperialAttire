<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/productList.css'/>">
    <script src="<c:url value='/js/productList.js'/>"></script>
</head>
<body>
    <div class="container">
        <h2>Product List</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Size</th>
                    <th>Image</th>
                    <th>Actions</th> <!-- Add Actions column -->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>${product.size}</td>
                        <td>
                            <img src="<c:url value='${product.imageUrl}'/>" alt="${product.name}" style="width:100px;"/>
                        </td>
                        <td>
                            <!-- Update button -->
                            <a href="<c:url value='/product/edit/${product.id}'/>">Update</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
        <a href="<c:url value='/productForm'/>">Back to Product Form</a>
    </div>
</body>
</html>
