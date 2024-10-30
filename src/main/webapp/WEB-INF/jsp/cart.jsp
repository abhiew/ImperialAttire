<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
    <style>
        /* General Cart Page Styling */
        body {
            display: flex;
            flex-direction: column;
            font-family: Arial, sans-serif;
            background-color: #000000;
            margin: 0;
            height: 100%;
            color: #fff;
        }

        main {
            flex: 1;
            padding: 20px;
            text-align: center;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between; /* Space between title and navigation */
            align-items: center; /* Vertically align the items */
        }

        header h1 {
            margin: 0;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: flex-end; /* Align items to the right */
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a, nav ul li button {
            color: #fff;
            background: none;
            border: none;
            cursor: pointer;
            text-decoration: none;
            padding: 8px 12px;
            font-size: 1rem; /* Adjust font size for consistency */
        }

        nav ul li a:hover, nav ul li button:hover {
            text-decoration: underline;
        }

        /* Cart Container Styling */
        .cart-container {
            display: flex;
            flex-wrap: wrap; /* Allow items to wrap to the next line if necessary */
            justify-content: center; /* Center align the items */
            gap: 20px; /* Space between items */
            margin-top: 20px;
        }

        /* Cart Item Styling */
        .cart-item {
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 250px; /* Fixed width for consistency */
            text-align: center;
            padding: 16px;
            background-color: #fff;
            transition: transform 0.2s, box-shadow 0.4s;
        }

        /* Dark golden glow effect on hover */
        .cart-item:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px 5px rgba(255, 215, 0, 0.8), /* Inner glow - dark gold */
                        0 0 40px 15px rgba(255, 215, 0, 0.5), /* Medium glow - dark gold */
                        0 0 60px 30px rgba(255, 215, 0, 0.3); /* Outer glow - dark gold */
        }

        .cart-item img {
            width: 100%; /* Full width of the card */
            height: 200px; /* Height for image consistency */
            object-fit: cover; /* Maintain aspect ratio */
            border-radius: 4px;
        }

        .cart-item h3 {
            font-size: 1.2rem;
            margin: 12px 0;
            color: #333;
        }

        .cart-item p {
            font-size: 1rem;
            color: #555;
            margin: 8px 0;
            font-weight: bold;
        }

        /* Footer Styling */
        footer {
            color: #fff;
            text-align: center;
            padding: 10px 0;
            background-color: #333;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Your Cart</h1>
        <nav>
            <ul>
                <li><a href="<c:url value='/customerHome'/>">Home</a></li>
                <li><a href="<c:url value='/about'/>">About</a></li>
                <li><form action="<c:url value='/logout'/>" method="post">
                    <button type="submit">Logout</button>
                </form></li>
            </ul>
        </nav>
    </header>

    <main>
        <h2>Items in Your Cart</h2>
        <c:if test="${empty cartItems}">
            <p>Your cart is empty.</p>
        </c:if>
        <div class="cart-container">
            <c:forEach var="item" items="${cartItems}">
                <div class="cart-item">
                    <img src="<c:url value='${item.image}'/>" alt="${item.name}" />
                    <h3>${item.name}</h3>
                    <p>Price: $${item.price}</p>
                    <p>Quantity: ${item.quantity}</p>
                </div>
            </c:forEach>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 Imperial Attire. All rights reserved.</p>
    </footer>
</body>
</html>
