<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
    <h1>Product Details</h1>

    <!-- Display First Product -->
    <c:if test="${not empty product1}">
        <h2>Product 1 Details</h2>
        <p>Product ID: ${product1.id}</p>
        <p>Product Name: ${product1.name}</p>
        <p>Description: ${product1.description}</p>
        <p>Price: ${product1.price}</p>
        <p>Image URL: ${product1.image}</p>
    </c:if>

    <!-- Display error message if Product 1 is not found -->
    <c:if test="${not empty error1}">
        <p>${error1}</p>
    </c:if>

    <!-- Display Second Product -->
    <c:if test="${not empty product2}">
        <h2>Product 2 Details</h2>
        <p>Product ID: ${product2.id}</p>
        <p>Product Name: ${product2.name}</p>
        <p>Description: ${product2.description}</p>
        <p>Price: ${product2.price}</p>
        <p>Image URL: ${product2.image}</p>
    </c:if>

    <!-- Display error message if Product 2 is not found -->
    <c:if test="${not empty error2}">
        <p>${error2}</p>
    </c:if>

</body>
</html>
